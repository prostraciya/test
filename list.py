
#список
moto = ['honda','suzuki','yamaha','hd']
print(moto)

#удаление последнего значения списка
poped_moto=moto.pop()
print(moto)
print(poped_moto)

#удаление точечно обьекта из списка
del moto[2]
print(moto)

#удаление из списка не зная номера в списке
moto.remove('suzuki')
print(moto)

#добавление в конец списка
moto.append('ducati')
print(moto)
#добавление в список на четку позицию
moto.insert(0,'ducati-first')
print(moto)


#список
moto = ['honda','suzuki','yamaha','hd']
print(moto)
moto.sort()
print(moto)
moto.sort(reverse=True)
print(moto)

#временная сортировка без изменения списка
moto = ['honda','suzuki','yamaha','hd']
print(sorted(moto))

moto.reverse()
print(moto)

#узнать длину списка
print(len(moto))
