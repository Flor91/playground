#! python3
# table

def genTable(t):
    rows = len(t)
    columns = len(t[0])
    for column in range(columns):
        for row in range(rows):
            yield column, row, t[row][column]

def tableData(t):
    colWidth = {}
    for col, ignore, value in genTable(t):
        if col not in colWidth.keys():
            colWidth[col] = len(value)
        elif len(value) > colWidth[col]:
            colWidth[col] = len(value)
    return colWidth

def printTable(t):
    colWidths = tableData(t)
    prevRow = 0

    for col, row, value in genTable(t):
        if prevRow != col:
            prevRow = col
            print('\n')
        print(value.rjust(colWidths[row]), end='')

t = [['apples', 'oranges', 'cherries', 'banana'],
     ['Alice', 'Bob', 'Carol', 'David'],
     ['dogs', 'cats', 'moose', 'goose']]

printTable(t)
