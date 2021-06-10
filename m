X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2020" "Thursday" "10" "June" "2021" "19:18:55" "+0200" "Christophe JAILLET" "christophe.jaillet@wanadoo.fr" nil "52" "Re: [oss-security] CVE-2021-31618: Apache httpd: NULL pointer dereference on specially crafted HTTP/2 request" nil nil nil "6" nil nil (number mark "U       christophe.j Jun 10   52/2020  " thread-indent "\"Re: [oss-security] CVE-2021-31618: Apache httpd: NULL pointer dereference on specially crafted HTTP/2 request\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-31618: Apache httpd: NULL pointer dereference on specially crafted HTTP/2 request" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1453 invoked by uid 550); 10 Jun 2021 18:45:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7486 invoked from network); 10 Jun 2021 17:19:07 -0000
X-ME-Helo: [192.168.1.18]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Thu, 10 Jun 2021 19:18:56 +0200
X-ME-IP: 86.243.172.93
To: oss-security@lists.openwall.com, John Helmert III <jchelmert3@posteo.net>
References: <1622544226.KAPKHQKN@httpd.apache.org>
 <YMIj1mZsQrmj6PBA@sol.nexus.lan>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <8feb8989-3b53-a97a-4421-ef8e47cce53d@wanadoo.fr>
Date: Thu, 10 Jun 2021 19:18:55 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YMIj1mZsQrmj6PBA@sol.nexus.lan>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Subject: Re: [oss-security] CVE-2021-31618: Apache httpd: NULL pointer
 dereference on specially crafted HTTP/2 request


Le 10/06/2021 à 16:38, John Helmert III a écrit :
> On Wed, Jun 09, 2021 at 11:11:00PM +0200, Christophe JAILLET wrote:
>> CVE-2021-31618: NULL pointer dereference on specially crafted HTTP/2 request
>>
>> Severity: important
>>
>> Vendor: The Apache Software Foundation
>>
>> Versions Affected:
>> 2.4.47
>> httpd
>> Description:
>> Apache HTTP Server 2.4.47
>> Apache HTTP Server protocol handler for the HTTP/2 protocol checks received request headers against the size limitations as configured for the server and used for the HTTP/1 protocol as well. On violation of these restrictions and HTTP response is sent to the client with a status code indicating why the request was rejected.
>>
>> This rejection response was not fully initialised in the HTTP/2 protocol handler if the offending header was the very first one received or appeared in a a footer. This led to a NULL pointer dereference on initialised memory, crashing reliably the child process. Since such a triggering HTTP/2 request is easy to craft and submit, this can be exploited to DoS the server.
>>
>> This affected versions prior to 2.4.47
> The announcement on the website indicates the affected versions for
> CVE-2021-31618 are <2.4.48 and in the below table it indicates <=2.4.48
> are affected. Both of these are different from the mail advisory, can
> you clarify the affected versions, please?

Hi,

in fact it was fixed in 2.4.47, BUT this version was never announced and 
has never been visible from the httpd.apache.org website.

So from an end-user point of view if was really fixed in 2.4.48 (and 
2.4.47 does not exist).

We'll clarify internally how we should proceed in such cases to avoid 
such questions.
The information should be consistent wherever you look for it.

Hope this clarify the situation.

Best regards,

CJ


>> Mitigation:
>> none
>>
>> Credit:
>> Apache HTTP server would like to thank  LI ZHI XIN from NSFocus for reporting this.
>>
>> References:
>> https://httpd.apache.org/security/vulnerabilities_24.html
>>
