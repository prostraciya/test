age = 17
if age >= 18:
    print('hop hey')
else:
    print('no hop hey')


age = 17
if age >= 18:
    print('hop hey')
elif age == 17:
    print('mayby hop hey')
else:
    print('no hop hey')

#упрощение вывода информации, только с одной стройкой print
age = 15
if age >= 18:
    price = 10
elif age == 17:
    price = 9
else:
    price = 15

print('You cost is $' + str(price))

#проверка нескольких условий
requested_toppings = ['mushrooms', 'extra chesse']
if 'mushrooms' in requested_toppings:
    print('adding mushrooms')
if 'papperoni' in requested_toppings:
    print('adding papperoni')
if 'extra chesse' in requested_toppings:
    print('adding extra chesse')

age = 17
if age >= 18:
    print('hop hey')
elif age == 17:
    print('mayby hop hey')
else:
    print('no hop hey')
