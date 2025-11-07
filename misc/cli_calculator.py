print("simple cli calculator. Press Ctrl+C to exit.")
print("Enter your expressions: ")
while True:
    try:
        expression = input("> ")
        if expression == 'exit':
            print('Bye!')
            break
        result = eval(expression)
        print(result)
    except KeyboardInterrupt:
        print('Bye!')
        break
    except Exception as e:
        print(f"Error: {e}")
        continue