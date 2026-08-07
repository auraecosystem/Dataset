let httpRequestMessage = new HttpRequestMessage(
  HttpMethod("post"),
  new Uri("https://api.eu-central-1.saucelabs.com/rdc/v2/sessions/{sessionId}/appiumserver")
)

httpRequestMessage.Headers.Add("Content-Type", "application/json")
httpRequestMessage.Headers.Add("Authorization", "Basic username:password")

let content = new StringContent("""{
  "appiumVersion": "appium2-202501010004"
}""", Encoding.UTF8, "application/json")
httpRequestMessage.Content <- content

let client = new HttpClient()
let! result = client.SendAsync(httpRequestMessage)
