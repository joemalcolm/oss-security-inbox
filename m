X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1411" "Thursday" "22" "August" "2019" "19:44:50" "+0100" "Eddie Chapman" "eddie@ehuk.net" "<9c8ef246-0e75-793b-6995-51e50a730701@ehuk.net>" "26" "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" "^Date:" nil nil "8" "2019082218:44:50" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" (number mark "        eddie@ehuk.n Aug 22   26/1411  " thread-indent "\"Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2\"\n") "<20190822135753.10d124a4@jabberwock.cb.piermont.com>" ("<CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>" "<C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>" "<20190822093122.GQ6086@suse.de>" "<ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>" "<CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>" "<20190822135753.10d124a4@jabberwock.cb.piermont.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15697 invoked by uid 550); 22 Aug 2019 18:46:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13990 invoked from network); 22 Aug 2019 18:45:02 -0000
DKIM-Filter: OpenDKIM Filter v2.10.3 schatzi.steelbluetech.co.uk 8BA9EBFED7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ehuk.net; s=default;
	t=1566499490; bh=Tw6TS0SjhkmeiQGzxWZ0zRWkozOgb+nyx8l5lWwwDKE=;
	h=Reply-To:Subject:To:References:From:Date:In-Reply-To:From;
	b=fD9VH19OjT9N8+nAzZGFbRplTLbhAAPpUeGpGQpZqtQUuW3JuUJooaGRYRi41ILQv
	 131fNgDcI91RZ0InvKIivmXApvO9ZZngOlxM0Xu9JIodgkJOVqBz58ff/9JmyCLfEK
	 lhXQsJiuKOVqgDJTRh9pvRardovVToSxQLWc95hc=
References: <CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>
 <C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>
 <20190822093122.GQ6086@suse.de>
 <ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>
 <CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>
 <20190822135753.10d124a4@jabberwock.cb.piermont.com>
Message-ID: <9c8ef246-0e75-793b-6995-51e50a730701@ehuk.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822135753.10d124a4@jabberwock.cb.piermont.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Date: Thu, 22 Aug 2019 19:44:50 +0100
From: Eddie Chapman <eddie@ehuk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB
 subsystem x2
To: oss-security@lists.openwall.com

On 22/08/2019 18:57, Perry E. Metzger wrote:
> Android phones run Linux. People routinely plug those phones in to USB
> charging stations in airports, on airplanes, at booths in public
> places, etc.
> 
> Perry

I would argue that this kind of behaviour is far too trusting and asking 
for trouble. Should we request a CVE for foolish user behaviour? Yes, 
USB was designed to make it easy be able to plug/unplug devices without 
having to open your device up, but it doesn't mean people should do 
stupid things with it. Ok there are different levels of risk, you can 
never be totally sure if any device is safe unless you open it up and 
start examining. If it is a dumb charger or you know the person who 
supplies you with a more sophisticated charging device (either a 
manufacturer you trust you bought it from or a friend you trust obtained 
the device from a trusted manufacturer) then the risk is lower, but not 
eliminated completely.

If I designed a box with PCIe slots on the outside of the case, would 
you go around plugging in random circuit boards into it if they were 
available at an airport and provided some useful function? I would not. 
Whatever interface it is I will only plug it in if I have some 
reasonable level of confidence about the device. Or maybe people have 
already started reviewing the kernel code looking for ways in which a 
malicious PCIe device could own the system.
