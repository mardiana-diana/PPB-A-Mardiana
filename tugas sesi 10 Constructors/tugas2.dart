class ApiClient {
  final String baseUrl;
  final int timeoutDetik;
  final bool useHttps;

  // Concise constructor utama
  new(this.baseUrl, {this.timeoutDetik = 30, this.useHttps = true});

  // Concise named constructor untuk development
  new dev(String host)
      : baseUrl = host,
        timeoutDetik = 5,
        useHttps = false;

  void cetakStatus() {
    print('Base URL: $baseUrl | Timeout: ${timeoutDetik}s | HTTPS: $useHttps');
  }
}

void main() {
  var clientProd = ApiClient('api.kampus.ac.id');
  var clientDev = ApiClient.dev('localhost:8080');

  clientProd.cetakStatus();
  clientDev.cetakStatus();
}