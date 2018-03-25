cat_name = []
while True:
    print('cat' + str(len(cat_name) + 1) + 'Please Type Name' + '(Please Enter Key if you wanna exit)')
    name = input()
    if name == '':
        break
    cat_name = cat_name + [name]
print('Look cat name :')
for name in cat_name:
    print('    ' + name)
