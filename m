X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1362" "Thursday" "27" "April" "2017" "08:43:46" "-0400" "Antoine =?utf-8?B?QmVhdXByw6k=?=" "anarcat@orangeseeds.org" "<87k266yq9p.fsf@curie.anarc.at>" "44" "Re: [oss-security] kedpm: Information leak via the command history file" nil nil nil "4" "2017042712:43:46" "[oss-security] kedpm: Information leak via the command history file" (number mark "U       anarcat@oran Apr 27   44/1362  " thread-indent "\"Re: [oss-security] kedpm: Information leak via the command history file\"\n") "<c5fea488-4723-ae60-3a48-15a9c234bb70@gmail.com>" ("<87k26628ox.fsf@curie.anarc.at>" "<c5fea488-4723-ae60-3a48-15a9c234bb70@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25724 invoked by uid 550); 27 Apr 2017 13:09:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28608 invoked from network); 27 Apr 2017 12:43:58 -0000
From: Antoine =?utf-8?Q?Beaupr=C3=A9?= <anarcat@orangeseeds.org>
To: Emilio Pozuelo Monfort <pochu27@gmail.com>, oss-security@lists.openwall.com
In-Reply-To: <c5fea488-4723-ae60-3a48-15a9c234bb70@gmail.com>
References: <87k26628ox.fsf@curie.anarc.at> <c5fea488-4723-ae60-3a48-15a9c234bb70@gmail.com>
Date: Thu, 27 Apr 2017 08:43:46 -0400
Message-ID: <87k266yq9p.fsf@curie.anarc.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] kedpm: Information leak via the command history file

On 2017-04-27 10:09:13, Emilio Pozuelo Monfort wrote:
> Hi,
>
> On 26/04/17 22:52, Antoine Beaupr=C3=A9 wrote:
>> A vulnerability was discovered in the kedpm password manager that may
>> expose the master password when changed, if passed on the commandline.
>>=20
>> Example, good:
>>=20
>> kedpm> passwd
>> New password:
>> Repeat password:
>> Password changed.
>> kedpm>
>>=20
>> Example, bad:
>>=20
>> kedpm:/> passwd bar
>> Password changed
>>=20
>> The former will show "passwd" in the ~/.kedpm/history file while the
>> latter will show "passwd bar" in the history file, divulging the
>> password in clear text.
>>=20
>> Also, all password *names* that are created or consulted are saved in
>> the history file, something that users may not expect (although you have
>> to wonder how they thought history worked).
>>=20
>> This is documented in the Debian bugtracker:
>>=20
>> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D860817
>>=20
>> But I would like to get a CVE assigned for wider diffusion.
>
> You need to request it at https://cveform.mitre.org/
>
> You can follow up here with the number when you get one assigned.

I have requested a CVE.

--=20
The history of any one part of the earth, like the life of a soldier,
consists of long periods of boredom and short periods of terror.
                       - British geologist Derek V. Ager
