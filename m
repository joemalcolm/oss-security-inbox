Received: (qmail 15438 invoked by uid 550); 22 Aug 2023 21:26:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12045 invoked from network); 22 Aug 2023 21:22:01 -0000
Message-ID: <27c254dd-41da-7326-f49f-5eb6aeeac5ae@eenterphace.org>
Date: Tue, 22 Aug 2023 23:21:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: oss-security@lists.openwall.com,
 Simon Steiner <simonsteiner1984@gmail.com>, fibr3s@gmail.com
References: <001601d9d4cf$66c49ba0$344dd2e0$@gmail.com>
From: Moritz Bechler <mbechler@eenterphace.org>
Cc: security@apache.org
In-Reply-To: <001601d9d4cf$66c49ba0$344dd2e0$@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] [CVE-2022-44730] Apache Batik information
 disclosure vulnerability

Hi,

> CVE-2022-44730:
>          Apache Batik information disclosure vulnerability
> 
> Severity:
>          Medium
> 
> Vendor:
>          The Apache Software Foundation
> 
> Versions Affected:
>          Batik 1.0 - 1.16
> 
> Description:
>          Switch to empty whitelist for rhino

And here the liked bug does not reference the appropriate commit, but 
one in which the whitelist wasn't actually empty 
(<https://svn.apache.org/viewvc?view=revision&revision=1905011> would be 
the more recent update). Putting java.lang.System on that list would 
have been a pretty bad choice, so, good that that did not make it into 
the release.


  I have the feeling that maybe Apache has a mail template that has 
"information disclosure vulnerability" in the subject as an example, as 
I have noticed in other cases that the subjects indicate information 
disclosure when the issue really is something else.


Moritz

