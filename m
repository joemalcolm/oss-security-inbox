X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2193" "Thursday" "18" "February" "2021" "23:26:44" "-0900" "Michael McNally" "mcnally@isc.org" nil "50" "Re: [oss-security] BIND Operational Notification: Enabling the new BIND option \"stale-answer-client-timeout\" can result in unexpected server termination" nil nil nil "2" nil nil (number mark "U       mcnally@isc. Feb 18   50/2193  " thread-indent "\"Re: [oss-security] BIND Operational Notification: Enabling the new BIND option \"stale-answer-client-timeout\" can result in unexpected server termination\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] BIND Operational Notification: Enabling the new BIND option \"stale-answer-client-timeout\" can result in unexpected server termination" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19563 invoked by uid 550); 19 Feb 2021 08:26:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19542 invoked from network); 19 Feb 2021 08:26:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1613723206; bh=TI229VkQcXGEDtRhFaRrAV4JryDWa0S1Vw1CPbf2HJc=;
	h=To:Cc:References:From:Subject:Date:In-Reply-To;
	b=YsY4Y/fnKFZFGCvlemolMp9FIYF41eqWPGkQoU0fla/UdBN1oSnkV1QzAokkDpR1d
	 JQOy05cK83iPzRTVsbJ72wbz1bjNAkKouuSYdm1utzWb3Ao61YM2JBNJWUqCxnNJEU
	 TRQS+PY/zQAASlZlBdH811Qgz+tcwAfuhlXA2mt4=
DKIM-Filter: OpenDKIM Filter v2.9.2 zmx1.isc.org A0889160071
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1613723205;
	bh=aLk7xJvZ9WZH7LrOSeyh5AQnsyYWH9GaiIyT0ov8HNM=;
	h=To:From:Subject:Message-ID:Date:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	b=YF1IpXqHlEApNlXzNChes7Qx4kkSULKWx2vgDqf6055+xWv0Mq7M35fSL5QKRz4/K
	 VqGnaIVxh4vhckTy1yqm2upjiy68SSeAhalHynHoA6tz8AcdiSlimz4yUfOrJ9K6Jx
	 tcnNAlkO2AiDB6MNHblqE5Vb+cqW80rRM00kARV0=
To: =?UTF-8?Q?Hanno_B=c3=b6ck?= <hanno@hboeck.de>
Cc: oss-security@lists.openwall.com
References: <4696a666-a284-041e-ae31-d2c6e844a88c@isc.org>
 <20210219091737.5582f481@computer>
From: Michael McNally <mcnally@isc.org>
Message-ID: <c856bf26-33e3-cc79-d597-e023c61fe210@isc.org>
Date: Thu, 18 Feb 2021 23:26:44 -0900
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210219091737.5582f481@computer>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] BIND Operational Notification: Enabling the new
 BIND option "stale-answer-client-timeout" can result in unexpected server
 termination

On 2/18/21 11:17 PM, Hanno B=C3=B6ck wrote:
> On Thu, 18 Feb 2021 20:09:47 -0900
> ISC Security Officer <security-officer@isc.org> wrote:
>=20
>> 2)  If you already have packages based on 9.16.12, we expect to have
>> a patch ready well before the next maintenance release.  A candidate
>> patch is under review now and can be delivered after review and
>> quality assurance testing.  If you wish to receive updates on the
>> progress of this patch, please e-mail your request to
>> security-officer@isc.org
>=20
> I am confused by your actions here.
>=20
> You warn people about a messed up release (can happen, no problem), you
> say you have a preliminary patch, but you make it extra complicated to
> get that patch? Why not just post the patch?

In brief:

- the flawed releases were issued yesterday
- this morning the first customer reported the crash to us
- we isolated the root cause of the reported crash a short time after that
- we have written a candidate patch, but it has not yet been reviewed
   or put through our QA process.

I think people here will not fault us for being understandably gun-shy
about compounding our error further.

We certainly don't want to make it more complicated than necessary
to obtain a patch, once we have one we are satisfied will safely
correct the problem without introducing other issues, but we don't
have that at this moment in time.

However, we were concerned that packagers would very likely be
scrambling to issue updated patches which correct the CVE we also
disclosed yesterday, if they had not already prepared them in advance.
So we thought it was imperative to announce the issue ASAP, even
while we work on reviewing and testing the candidate patch.

All the same, we know that there will be interest in a patch, so we
encourage people to request it now and it will be delivered when we
are satisfied we have screened it properly.

I hope that explains our actions better.  We've been scrambling to
deal with this and don't have everything perfectly lined up but we
wanted to be transparent and not compound the problem by sitting
on information until we had everything neatly tied up.

Michael McNally
(for ISC Security Officer)
