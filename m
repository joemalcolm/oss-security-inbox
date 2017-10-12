X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["656" "Thursday" "12" "October" "2017" "14:05:39" "+0200" "Roman Medina-Heigl Hernandez" "roman@rs-labs.com" "<a54bb6fe-9c95-a0d9-1c70-c0deefb802db@rs-labs.com>" "27" "Re: [oss-security] Privilege escalation with kill(-1, SIGKILL) in XNU kernel of macOS High Sierra" "^Date:" nil nil "10" "2017101212:05:39" "[oss-security] Privilege escalation with kill(-1, SIGKILL) in XNU kernel of macOS High Sierra" (number mark "        roman@rs-lab Oct 12   27/656   " thread-indent "\"Re: [oss-security] Privilege escalation with kill(-1, SIGKILL) in XNU kernel of macOS High Sierra\"\n") "<CAPshzHa=n0hn+JSdb+D4WZqXQjcFF0D8ffepOqjtysHAb3=W9Q@mail.gmail.com>" ("<87h8v5b2rf.fsf@xps13.shealevy.com>" "<CANO=Ty2wCpT6iaGt05=+quEZYbWCgtxroceUs7YPk=6=Y1vQYg@mail.gmail.com>" "<CAPshzHa=n0hn+JSdb+D4WZqXQjcFF0D8ffepOqjtysHAb3=W9Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12117 invoked by uid 550); 12 Oct 2017 12:51:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3228 invoked from network); 12 Oct 2017 12:08:14 -0000
X-Virus-Scanned: Powered by H&S
References: <87h8v5b2rf.fsf@xps13.shealevy.com>
 <CANO=Ty2wCpT6iaGt05=+quEZYbWCgtxroceUs7YPk=6=Y1vQYg@mail.gmail.com>
 <CAPshzHa=n0hn+JSdb+D4WZqXQjcFF0D8ffepOqjtysHAb3=W9Q@mail.gmail.com>
Message-ID: <a54bb6fe-9c95-a0d9-1c70-c0deefb802db@rs-labs.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAPshzHa=n0hn+JSdb+D4WZqXQjcFF0D8ffepOqjtysHAb3=W9Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: es-ES
Date: Thu, 12 Oct 2017 14:05:39 +0200
From: Roman Medina-Heigl Hernandez <roman@rs-labs.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Privilege escalation with kill(-1, SIGKILL) in XNU
 kernel of macOS High Sierra
To: oss-security@lists.openwall.com

More teachable moments:

DoS != Privilege escalation

Saludos,
-Román

El 12/10/2017 a las 12:52, Hunger escribió:
> On Thu, Oct 12, 2017 at 4:00 AM, Kurt Seifried <kseifried@redhat.com> wrote:
>
>> So I normally wouldn't accept this posting (and no doubt Solar will be
>> annoyed because this isn't Open Source per se, and he's 100% right) but
>> this posting does provide a good teachable moment.
>>
>
> And here's the teachable moment for you...
>
>
> The XNU kernel is Open Source:
>
> https://opensource.apple.com/source/xnu/xnu-4570.1.46/
>
> The Apple Public Source License 2.0 approved by the OSI:
>
> https://opensource.org/licenses/APSL-2.0
>

