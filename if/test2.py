current_users = ['admin', 'denis', 'andry', 'alex', 'renat', 'vova']
new_users = ['evplatiy', 'arsen', 'stas', 'Alex', 'REnat']

for new_user in new_users:
    if new_user.lower() in current_users:
        print("No!!!! " + new_user)
    else:
        print(new_user + " yes!!!")