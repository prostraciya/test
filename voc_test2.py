rivers = {
    'nile': "egypt",
    'dnipro': 'ukraine',
    'Amazonia': 'brazil',
}

for key, value in rivers.items():
    print("The " + key.title() + 'runs through ' + value.title())

for key in rivers:
    print(rivers[key].title())

for key in rivers:
    print(rivers[value].title())
