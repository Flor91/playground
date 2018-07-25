#! python3
# inventory.py -

def displayInventory(inventory):
    totalItems = 0
    print("Inventory:")
    for item, c in inventory.items():
        totalItems += c
        print(str(c) + " " + item)
    print("Total number of items: " + str(totalItems))

def addToInventory(inventory, addedItems):
    print("\n- Adding Dragon Loot to Inventory - \n")
    for k in addedItems:
        if k in inventory.keys():
            inventory[k] += 1
        else:
            inventory[k] = 1


stuff = {'rope': 1, 'torch': 6, 'gold coin': 42, 'dagger': 1, 'arrow': 12}
displayInventory(stuff)

dragonLoot = ['gold coin', 'dagger', 'gold coin', 'gold coin', 'ruby']
addToInventory(stuff, dragonLoot)
displayInventory(stuff)
