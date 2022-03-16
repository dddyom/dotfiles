import os

def rename_wal(path=".wallpapers"):
    names = os.listdir(path)
    for i in range(len(names)):
        ext = names[i].split(".")[-1]
        os.rename(f"{path}/{names[i]}", f"{path}/{i}.{ext}")

if __name__ == '__main__':
    rename_wal()
