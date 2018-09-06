def readMatrix(input):
    maxRow, maxColumn = input.readline().split()
    maxRow = int(maxRow)
    maxColumn = int(maxColumn)
    nextLine = input.readline()
    matrix = {}
    while nextLine not in ["\n", ""]:
        nextLine = nextLine.rstrip()
        row, column, value = nextLine.split()
        row = int(row)
        column = int(column)
        value = float(value)
        if row > maxRow or column > maxColumn or row < 1 or column < 1:
            raise ValueError("Redak ili stupac idu izvan matrice.")
        matrix[row - 1, column - 1] = value
        nextLine = input.readline()
    return matrix, maxRow, maxColumn


def multiplyMatrices(matrix1, matrix2):
    if matrix1[2] != matrix2[1]:
        raise ValueError("Nemogu mnozit matrice, krive dimenzije")
    def create2DMatrix(maxRow, maxColumn):
        return [[0.0 for _ in range(maxColumn)] for _ in range(maxRow)]
    def fillMatrices(matrixDictionary, matrix):
        for row, column in matrixDictionary:
            matrix[row][column] = matrixDictionary[row, column]
        return matrix
    first = fillMatrices(matrix1[0], create2DMatrix(matrix1[1], matrix1[2]))
    second = fillMatrices(matrix2[0],create2DMatrix(matrix2[1], matrix2[2]))
    zip_second = zip(*second)
    zip_second = list(zip_second)
    return [[sum(ele_a * ele_b for ele_a, ele_b in zip(row_a, col_b))
             for col_b in zip_second] for row_a in first]

input = open("matrice.txt", "r")
matrix1 = readMatrix(input)
matrix2 = readMatrix(input)
for line in multiplyMatrices(matrix1, matrix2):
    print(line)