# Python image'ını kullan
FROM python:3.9-slim

# Çalışma dizini oluştur ve ayarla
WORKDIR /app

# Gereksinim dosyasını ekle
COPY requirements.txt requirements.txt

# Gereksinimleri yükle
RUN pip install -r requirements.txt

# Uygulama dosyalarını ekle
COPY . .

# Flask uygulamasını çalıştır
CMD ["python", "app.py"]
