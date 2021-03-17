## Задача №4:
#
# В соседнем районе рождественские эльфы готовят подарки для жителей города.
# Для каждого подарка (файл data/4.txt) нужно найти сколько оберточной бумаги потребуется.
# Формула рассчета: 2*ш*д + 2*д*в + 2*в*ш + площадь наименьшей стороны
# Например, на подарок размером 2х3х4 требуется 2*6 + 2*12 + 2*8 = 52 + 6 кв. см.
#
# Сколько всего оберточной бумаги нужно купить эльфам?
#
## Требования к решению:
# - Входные данные находятся в файле data/4.txt
# - В значениях данные длины, ширины и высоты не упорядочены и могут идти в любом порядке, однако
# длина всегда наименьшее число из трех, высота - среднее, ширина - самое большое.
# - Результат должен быть выведен в консоль командой puts
#
#
## Решение:

sum = 0
matr = []
File.readlines("data/4.txt").each {|el| matr << el.split("x")}
for mass in (0..matr.size-1)
    size = mass.size
    for el in (0..matr[mass].size-1)
        matr[mass][el] = matr[mass][el].to_i
    end
    sum += 2*matr[mass][0]*matr[mass][1] + 2*matr[mass][1]*matr[mass][2] + 2*matr[mass][0]*matr[mass][2]
    if matr[mass][0]*matr[mass][1] < matr[mass][1]*matr[mass][2] && matr[mass][0]*matr[mass][1] < matr[mass][0]*matr[mass][2]
        sum += matr[mass][0]*matr[mass][1]
    elsif matr[mass][1]*matr[mass][2] < matr[mass][0]*matr[mass][2]
        sum += matr[mass][1]*matr[mass][2]
    else
        sum += matr[mass][0]*matr[mass][2]
    end
end
puts sum
