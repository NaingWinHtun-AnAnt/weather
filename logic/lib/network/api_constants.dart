const baseUrl = "https://api.weatherapi.com/v1/";
const apiKey = "1f7975475ba6446a98c44352232005";

/// end points
const endPointSearchCity = "search.json";
const endPointWeatherDetail = "current.json";
const endPointForecast = "forecast.json";

/// params
const paramKey = "key";
const paramQ = "q";
const paramAqi = "aqi";
const paramDays = "days";

/// firebase
const firebaseBaseUrl = "https://fcm.googleapis.com/";

/// end points
const endPointNotificationSend = "fcm/send";

/// firebase messaging server key
const serverKey =
    "AAAA6ZqQJyY:APA91bEZJhTVn0k3JmFAjFxVMpI0PJjx22d6sqeI43bD2N53R1NBVtaAVQJ8XpGQo5oOB5RHG7XZuQO0QrZmQs8WlWjWzKlYaefyTDYEsKoWI7xBU6mjGfJkOUNIOr7QQFqt7YFYdqD_";

/// headers name
const paramAuthorization = "Authorization";
const paramContentType = "Content-Type";
const paramAcceptEncoding = "Accept-Encoding";
const paramConnection = "Connection";

/// headers value
const valueAuthorization = "key=$serverKey";
const valueContentType = "application/json";
const valueAcceptEncoding = "gzip, deflate, br";
const valueConnection = "keep-alive";
const priority = "high";
