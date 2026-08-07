let httpRequestMessage = new HttpRequestMessage(
  HttpMethod("get"),
  new Uri("https://api.eu-central-1.saucelabs.com/rdc/v2/devices?deviceName=iPhone.*&os=ANDROID&osVersion=17&deviceType=PHONE")
)

httpRequestMessage.Headers.Add("Authorization", "Basic username:password")

let client = new HttpClient()
let! result = client.SendAsync(httpRequestMessage)
