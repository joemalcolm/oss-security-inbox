X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1554" "Tuesday" "21" "April" "2015" "15:10:18" "+0800" "=?UTF-8?B?572X5aSn6b6Z?=" "luodalongde@gmail.com" "<CAPcZBq5ZM0GASw41B7kcDLoeHEz=gBvL+K+=KrWTZ5Z_ZMTQGQ@mail.gmail.com>" "59" "Re: [oss-security] net-snmp snmp_pdu_parse() function incompletely initializaition vulnerability" nil nil nil "4" "2015042107:10:18" "[oss-security] net-snmp snmp_pdu_parse() function incompletely initializaition vulnerability" (number mark "        luodalongde@ Apr 21   59/1554  " thread-indent "\"Re: [oss-security] net-snmp snmp_pdu_parse() function incompletely initializaition vulnerability\"\n") "<CAPcZBq4ZVAJUMMJh+Hoa0BJWgES6eKF48Wj21tLwRR2ORjS2VA@mail.gmail.com>" ("<CAPcZBq7YrwpZDJNZ58yQjcYHTZ43qoQWCoUAet9Eb7Dn2sruBQ@mail.gmail.com>" "<5535003B.3040905@syscall.eu>" "<CAPcZBq4ZVAJUMMJh+Hoa0BJWgES6eKF48Wj21tLwRR2ORjS2VA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29957 invoked by uid 550); 21 Apr 2015 17:35:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5139 invoked from network); 21 Apr 2015 07:10:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=a9hJvK9oexn/inyi3X8Fe4ql0u7YB69Zg9NP3UYdEN8=;
        b=ixYzhxBAL5jZDEVBxq4nCZYnIdVgU0bwILMGRNDoh78agzfj4bnmzRQSffTZ9AFg49
         ++uVclmJkJao8ponIN8oseQ95OsAhJ0AWeR1+4yE8IASP4mdHLWtQPeDbM4znf6nxR84
         yymzJunmWP0907K4n2D19oT97Oyw7E3EVOhe1Cri+rb8nNWqeSKbPRS/+UVbQtEOFWxt
         QxO1sg0MAB4Ku3BF8oDD0ck40jAWY724CPCKOHkIG3CehW2P2sJPgY3cu+AZd0pJ/l0T
         1kg/a6Qhtcf8GNPnMMrsYAqo3QqdNAMg95sb1RjEpZt6IHkujgPd8mAh3oXAy+Nc03Dt
         O5pA==
MIME-Version: 1.0
X-Received: by 10.180.9.78 with SMTP id x14mr2993968wia.69.1429600218742; Tue,
 21 Apr 2015 00:10:18 -0700 (PDT)
In-Reply-To: <CAPcZBq4ZVAJUMMJh+Hoa0BJWgES6eKF48Wj21tLwRR2ORjS2VA@mail.gmail.com>
References: <CAPcZBq7YrwpZDJNZ58yQjcYHTZ43qoQWCoUAet9Eb7Dn2sruBQ@mail.gmail.com>
	<5535003B.3040905@syscall.eu>
	<CAPcZBq4ZVAJUMMJh+Hoa0BJWgES6eKF48Wj21tLwRR2ORjS2VA@mail.gmail.com>
Message-ID: <CAPcZBq5ZM0GASw41B7kcDLoeHEz=gBvL+K+=KrWTZ5Z_ZMTQGQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c236583585a4051436bd2c
Date: Tue, 21 Apr 2015 15:10:18 +0800
From: =?UTF-8?B?572X5aSn6b6Z?= <luodalongde@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] net-snmp snmp_pdu_parse() function incompletely
 initializaition vulnerability
To: =?UTF-8?Q?Rapha=C3=ABl_Rigo?= <ml-oss@syscall.eu>, 
	oss-security@lists.openwall.com

--001a11c236583585a4051436bd2c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Detail info=EF=BC=9A
https://sourceforge.net/p/net-snmp/bugs/2615/

2015-04-21 14:59 GMT+08:00 =E7=BD=97=E5=A4=A7=E9=BE=99 <luodalongde@gmail.c=
om>:

> Hi
>    I using snmp v3 protocol , and these crash info are about client.
>    Net-snmp software had ensure this vulnerability , and I will forward
> the message to you .
>
> 2015-04-20 21:33 GMT+08:00 Rapha=C3=ABl Rigo <ml-oss@syscall.eu>:
>
>> Hello,
>>
>> On 13/04/2015 07:44, =E7=BD=97=E5=A4=A7=E9=BE=99 wrote:
>> > Greeting! This is Qinghao Tang from QIHU 360  company, China. I am a
>> > security researcher there.
>> >
>> > I'm writing to apply for a CVE ID, for a 0day vulnerability in net-snm=
p.
>> > Please refer to below report.
>> >
>> Thank you for your report, it is very interesting.
>> I'm currently trying to understand the possible impact in one product we
>> are using. I tried to reproduce the crashed but I could not.
>>
>>
>> Would you mind sharing information regarding how you managed to get
>> those crashes ? :
>>
>> > [crash info from /var/log/messages]
>> >
>> > sprint_realloc_integer
>> >
>> > snmpget:0x290a3
>> >
>> > overview:Feb 22 11:37:48 localhost kernel: snmpget[24260]: segfault at
>> 0 ip
>> > 00007f00cbff20a3 sp 00007fff7bf08620 error 4 in
>> > libnetsnmp.so.30.0.3[7f00cbfc9000+ac000]
>> >
>> [...]
>>
>> Is it using SNMPv3 or v1 ?
>>
>> Or is it in the client ?
>>
>> Regards,
>> Rapha=C3=ABl Rigo
>>
>>
>

--001a11c236583585a4051436bd2c--
