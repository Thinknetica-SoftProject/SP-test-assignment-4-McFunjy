## Задача №3:
#
# Джон добрался до этажа с бомбой, но у него на пути стоит дверь с кодовым замком и рядом бумажка с инструкциями (файл data/3.txt)
#
# Чтобы узнать код от замка, ему нужно для каждой строки найти разницу между наибольшим и наименьшим числами и потом сложить полученные значения
#
## Требования к решению:
# - Входные данные находятся в файле data/3.txt (разделитель значений - символ табуляции)
# - Результат должен быть выведен в консоль командой puts
#
## Решение:

code = 0
matr = []
File.readlines("data/3.txt").each {|el| matr << el.split(" ")}
for mass in (0..matr.size-1)
    size = mass.size
    for el in (0..matr[mass].size-1)
        matr[mass][el] = matr[mass][el].to_i
    end
    code += matr[mass].max - matr[mass].min
end
puts code

