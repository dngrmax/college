s = input().strip()
elems = []   # уникальные символы
counts = []  # их счётчики

for ch in s:
    if ch in elems:
        idx = elems.index(ch)
        counts[idx] += 1
    else:
        elems.append(ch)
        counts.append(1)

for i in range(len(elems)):
    print(f"{elems[i]}: {counts[i]}")
