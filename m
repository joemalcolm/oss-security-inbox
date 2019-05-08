X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1114" "Wednesday" "8" "May" "2019" "11:19:29" "+0200" "Roman Drahtmueller" "draht@schaltsekun.de" nil "30" nil "^Date:" nil nil "5" nil nil (number mark "        draht@schalt May  8   30/1114  " thread-indent "\"Re: [oss-security] Re: fprintd: found storing user fingerprints without encryption\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: fprintd: found storing user fingerprints without encryption" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29950 invoked by uid 550); 8 May 2019 09:19:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29932 invoked from network); 8 May 2019 09:19:41 -0000
In-Reply-To: <CAPZbWne7ggvhAc3q22e1kYgmiQi7L+OTTmzXh8YBybZrcDHvjg@mail.gmail.com>
Message-ID: <alpine.LNX.2.02.1905081051030.29468@i8.fpunygfrxha.qr>
References: <CAPZbWnf64OLnNjuJuzmmsVNSi8tOPX+Kaiy0Evd47dw+NQP3NQ@mail.gmail.com> <CAPZbWne7ggvhAc3q22e1kYgmiQi7L+OTTmzXh8YBybZrcDHvjg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII
Date: Wed, 8 May 2019 11:19:29 +0200 (CEST)
From: Roman Drahtmueller <draht@schaltsekun.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: fprintd: found storing user fingerprints
 without encryption
To: oss-security@lists.openwall.com, Seong-Joong Kim <sungjungk@gmail.com>

>> Dear all,
>>
>> I would like to report a vulnerability of 'fprintd'.
>>
>> 'fprintd' does not encrypt sensitive information before storage.
>> *CWE-311: Missing Encryption of Sensitive Data*

[...]

This misses the point.

* Encryption shifts the problem to protecting the symmetric key, which
   is the very same problem. => Encryption solves other problems, but not
   this one.
* If you have sufficient privileges to access the fingerprint data,
   then you no longer need the data.
* You can't "safeguard" the fingerprint data by applying additional O/S
   controls such as SELinux, AppArmor, etc, you can only add more useful
   privilege transitions and protect against attacks that exploit
   implementation errors. Google "store fingerprint data ios android",
   there are suitable solutions.

Mostly: Your fingerprint is not a secret like a password, it is a username.

Since you can't change the fingerprint (biometrics problem), it is not 
very useful as a single authentication factor. Either you live with 
this, or you combine the fingerprint with a different authentication 
factor type.

Roman.
