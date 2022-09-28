Received: (qmail 13435 invoked by uid 550); 28 Sep 2022 13:29:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1835 invoked from network); 28 Sep 2022 13:21:07 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <53a25a93-e8ae-da21-8a5c-ed10fc2a1669@apache.org>
Date: Wed, 28 Sep 2022 14:19:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2021-43980: Apache Tomcat: Information disclosure

Severity: important

Description:

The simplified implementation of blocking reads and writes introduced in 
Tomcat 10 and back-ported to Tomcat 9.0.47 onwards exposed a long 
standing (but extremely hard to trigger) concurrency bug in Apache 
Tomcat 10.1.0 to 10.1.0-M12, 10.0.0-M1 to 10.0.18, 9.0.0-M1 to 9.0.60 
and 8.5.0 to 8.5.77 that could cause client connections to share an 
Http11Processor instance resulting in responses, or part responses, to 
be received by the wrong client.

Credit:

Thanks to Adam Thomas, Richard Hernandez and Ryan Schmitt for 
discovering the issue and working with the Tomcat security team to 
identify the root cause and appropriate fix.

References:

https://lists.apache.org/thread/3jjqbsp6j88b198x5rmg99b1qr8ht3g3
