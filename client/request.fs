let httpRequestMessage = new HttpRequestMessage(
  HttpMethod("get"),
  new Uri("https://api.eu-central-1.saucelabs.com/rdc/v2/sessions/{sessionId}/appiumserver")
)

httpRequestMessage.Headers.Add("Authorization", "Basic username:password")

let client = new HttpClient()
let! result = client.SendAsync(httpRequestMessage)
