Received: (qmail 6078 invoked by uid 550); 13 Oct 2023 07:46:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31813 invoked from network); 13 Oct 2023 01:54:17 -0000
Message-ID: <fc7f78ee-8322-4d6b-b07b-923954016c05@treenet.co.nz>
Date: Fri, 13 Oct 2023 14:54:02 +1300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com, Joshua Rogers <megamansec@gmail.com>
References: <CA+17n5uwjXBDzGGpepNtQSOFQaifnuyodd2EUQxEcCOLH+UUuw@mail.gmail.com>
From: Amos Jeffries <squid3@treenet.co.nz>
In-Reply-To: <CA+17n5uwjXBDzGGpepNtQSOFQaifnuyodd2EUQxEcCOLH+UUuw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Squid Caching Proxy Security Audit: 55
 Vulnerabilities, 35 0days.

Some reference updates.


On 11/10/23 20:55, Joshua Rogers wrote:
> 
> The issues are listed below. Due to the sheer size of issues discovered,
> technical details are not included in this email. However, breakdowns of
> the code and proof-of-concepts can be found on GitHub:
> https://megamansec.github.io/Squid-Security-Audit/
> 

> Cache Poisoning by Large Stored Response Headers (With Bonus XSS)

  ... GHSA-543m-w2m2-g255

> Gopher Assertion Crash

  ... GHSA-f5cp-6rh3-284w

> Assertion in Gopher Response Handling

  ... CVE-2021-46784 / GHSA-f5cp-6rh3-284w



AYJ
