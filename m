Received: (qmail 24242 invoked by uid 550); 4 Jul 2022 13:06:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23863 invoked from network); 4 Jul 2022 13:05:23 -0000
X-Virus-Scanned: amavisd-new at thermi.consulting
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=thermi.consulting;
	s=201909; t=1656939910;
	bh=lVWn1HtDvktLMrSlXewpKn7e4LOecFo/hfi9O5PIIAQ=;
	h=Date:MIME-Version:Subject:To:From:Content-Type;
	b=wHwb4IEDmx4n2rEun9rTVYwbZObHxsa+fPB99q6eRY4f/LddqQLBAJFhty7FXvX9k
	 f9zWWDFNIiTqur4fmD5III9TbhgiHKpgGtWFC/Peas9uTSgN5SkeW6yG7vNizysFsh
	 NJQABOAzYSXhqhMhq0wnLf3Slkhw34HhS0Jxh6jxgL0NL5M9Y6ZmCu97redoH6WO/o
	 2cUi0bpBVBZFb3SJRWQQ0iDQsGUcvz5L8hqTE2PfBXwEpbxEnc+zbVzFGYqAnH0llr
	 3ItC8eLqTJZrdz2hil2NQ71hd7yVZMU5A+E05cmSMHBKL/v0qutYmOXLnL//6nXTOA
	 qhQTEWnyXeFyw==
Message-ID: <3110cb65-cf6e-1742-0cdd-6792e47a6541@thermi.consulting>
Date: Mon, 4 Jul 2022 15:05:10 +0200
MIME-Version: 1.0
Content-Language: de-DE
To: oss-security@lists.openwall.com,
 Peter van Dijk <peter.van.dijk@powerdns.com>
References: <YsJ7JjZ/R/jqN+YX@itl-email>
 <939888998.96730.1656936945905@appsuite.open-xchange.com>
From: Noel Kuntze <noel.kuntze@thermi.consulting>
Organization: Noel Kuntze IT- und Unternehmenssicherheit
In-Reply-To: <939888998.96730.1656936945905@appsuite.open-xchange.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] DO NOT OPEN PREVIOUS MAIL Re: [oss-security]
 Denial of service in GnuPG

Hi Peter,

It's really not that deep.
The attachement is not named after the naming scheme expected of signatures of emails so clients won't try to process it in the context of opening or verifying an email.
I had to call gpg locally on the attached fiels to reproduce the issue.

But I agree that attaching such files that could be read by clients directly is not a good move.

Kind regards
Noel

Am 04.07.22 um 14:15 schrieb Peter van Dijk:
> Hello,
>
>> On 04/07/2022 07:31 Demi Marie Obenour <demi@invisiblethingslab.com> wrote:
>>
>> Signature (of /dev/null) that triggers this bug is attached, along with
>> the corresponding public key.
> This is insane. You can't send weaponised exploits that crash email clients to public mailing lists. Please do not do this again.
>
> Peter

