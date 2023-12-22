Received: (qmail 5462 invoked by uid 550); 23 Dec 2023 01:00:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13644 invoked from network); 22 Dec 2023 23:32:39 -0000
Date: Sat, 23 Dec 2023 01:33:13 +0200 (EET)
From: Harry Sintonen <sintonen@iki.fi>
To: oss-security@lists.openwall.com
In-Reply-To: <72b7513c-c471-1c8f-cbdb-574536d18ec4@gathman.org>
Message-ID: <d23e7dd0-eb16-046d-b418-ef130a2ccd4f@iki.fi>
References: <20231221143630.GD14101@suse.de> <20231221144656.GA40693@veps.esmtp.org> <20231222104647.GH14101@suse.de> <ZYVufT0sq16Z-M43@symphytum.spacehopper.org> <20231222121134.GI14101@suse.de> <20231222150438.GA13989@unix-ag.uni-kl.de>
 <CAHjsZGbiZYGug2L04iZ+VEmMg-pdfKyKOGdcSeCLnsZYd0Vm2Q@mail.gmail.com> <CAN_LGv2BhL40uhEk0TdYaYmd9zodSS-UJjWH5xSdLZWSoDFUMw@mail.gmail.com> <72b7513c-c471-1c8f-cbdb-574536d18ec4@gathman.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Subject: Re: [oss-security] Re: New SMTP smuggling attack

On Fri, 22 Dec 2023, Stuart D Gathman wrote:

> On Sat, 23 Dec 2023, Alexander E. Patrakov wrote:
>
>>> I'm trying to make sense of it - where's the compromise of the
>>> Confidentiality, Integrity or Availability of the affected mail
>>> servers?
>>> 
>> 
>> The integrity of the sender's identity, as a minimum, is compromised
>> here. Normally, when relaying mail, servers add a "Received:" header
>> that specifies where they received the connection from. This allows
>> tracking down the true origin of the message. The smuggled message
>> does not have such a header and thus misrepresents the vulnerable
>> relay as the ultimate sender. Additionally, if the relay has
>> destination-based deny lists that deny some but not all addresses on
>> the destination domain, they are sidestepped.
>
> This is certainly a bug, but the currently reality is that
> authentication involves SPF, DKIM, and other schemes - and does not
> solely rely on headers.  So can this "delete some headers" attack
> compromise these authentication schemes?

This is the key here: These validation schemes will act on other data 
(which the attacker provides, and is valid). Hence the email passes these 
validations and continues in the delivery chain.

Now comes the actual smuggling bug: Since the parsing of <CR><LF> is 
buggy, a forged message (will different details) will actually get 
delivered.

This is all described in detail in the excellent SEC Consult advisory.


   Regards,
-- 
l=2001;main(i){float o,O,_,I,D;for(;O=I=l/571.-1.75,l;)for(putchar(--l%80?
i:10),o=D=l%80*.05-2,i=31;_=O*O,O=2*o*O+I,o=o*o-_+D,o+_+_<4+D&i++<87;);puts
("  Harry 'Piru' Sintonen <sintonen@iki.fi> https://www.iki.fi/sintonen");}
