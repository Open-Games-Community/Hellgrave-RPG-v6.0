/**
 * @file imbuements.h
 * 
 * Credits: Yamaken
 * Credits: Cjaker
 * Rewritten and adapted: LucasCPrazeres
 */

#ifndef OT_SRC_IMBUEMENTS_H_
#define OT_SRC_IMBUEMENTS_H_

#include "creatures/players/player.h"
#include "utils/enums.h"
#include "utils/tools.h"

class Player;
class Item;

class Imbuement;

struct BaseImbuement {
	BaseImbuement(uint16_t initId, std::string initName, uint32_t initProtectionPrice, uint32_t initPrice, uint32_t initRemoveCost, int32_t initDuration, uint8_t initPercent) :
		id(initId), name(std::move(initName)), protectionPrice(initProtectionPrice), price(initPrice), removeCost(initRemoveCost), duration(initDuration), percent(initPercent) {}

	uint16_t id;
	std::string name;
	uint32_t protectionPrice;
	uint32_t price;
	uint32_t removeCost;
	int32_t duration;
	uint8_t percent;
};

struct CategoryImbuement {
	CategoryImbuement(uint16_t initId, std::string initName, bool initAgressive) :
		id(initId), name(std::move(initName)), agressive(initAgressive) {}

	uint16_t id;
	std::string name;
	bool agressive;
};

class Imbuements {
	public:
		bool loadFromXml(bool reloading = false);
		bool reload();

		Imbuement* getImbuement(uint16_t id);

		BaseImbuement* getBaseByID(uint16_t id);
		CategoryImbuement* getCategoryByID(uint16_t id);
		std::vector<Imbuement*> getImbuements(const Player* player, Item* item);

	protected:
		friend class Imbuement;

		bool loaded = false;

	private:
		std::map<uint32_t, Imbuement> imbuementMap;

		std::vector<BaseImbuement> basesImbuement;
		std::vector<CategoryImbuement> categoriesImbuement;

		uint32_t runningid = 0;
};

class Imbuement
{
	public:
		Imbuement(uint16_t initId, uint16_t initBaseId) : 
				id(initId), baseid(initBaseId) {}

		uint16_t getID() const {
			return id;
		}

		uint16_t getBaseID() const {
			return baseid;
		}

		uint32_t getStorage() const
		{
			return storage;
		}

		bool isPremium() {
			return premium;
		}
		std::string getName() const {
			return name;
		}
		std::string getDescription() const {
			return description;
		}

		std::string getSubGroup() const {
			return subgroup;
		}

		uint16_t getCategory() const {
			return category;
		}

		const std::vector<std::pair<uint16_t, uint16_t>>& getItems() const {
			return items;
		}

		uint16_t getIconID() {
			return icon + (baseid - 1);
		}

		uint16_t icon = 1;
		int32_t stats[STAT_LAST + 1] = {};
		int32_t skills[SKILL_LAST + 1] = {};
		int32_t speed = 0;
		uint32_t capacity = 0;
		int16_t absorbPercent[COMBAT_COUNT] = {};
		int16_t elementDamage = 0;

		CombatType_t combatType = COMBAT_NONE;

	protected:
		friend class Imbuements;
		friend class Item;

	private:
		bool premium = false;
		uint32_t storage = 0;
		uint16_t id, baseid, category = 0;
		std::string name, description, subgroup = "";

		std::vector<std::pair<uint16_t, uint16_t>> items;
};

#endif
