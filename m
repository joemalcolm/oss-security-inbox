X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1842" "Friday" "29" "January" "2016" "16:47:07" "+0100" "enki" "enki@fsck.pl" "<1528e110c5f.11ff2dddc43704.3865822946264713459@fsck.pl>" "48" "Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" "^Cc:" nil nil "1" "2016012915:47:07" "[oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" (number mark "        enki@fsck.pl Jan 29   48/1842  " thread-indent "\"Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes\"\n") "<CAJMyd9Yje0QY+Th_QUYuO6JspRvysKqkkxtXq-xgANBASM_Nrw@mail.gmail.com>" ("<2413003.GtkKFizscD@chimera>" "<CANO=Ty1ZFtpeUespB+nn0gZ8oC7PAkkr7+eTR1U+RyLtGKHKtA@mail.gmail.com>" "<CAJMyd9Yje0QY+Th_QUYuO6JspRvysKqkkxtXq-xgANBASM_Nrw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11600 invoked by uid 550); 29 Jan 2016 15:49:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9775 invoked from network); 29 Jan 2016 15:47:33 -0000
Message-ID: <1528e110c5f.11ff2dddc43704.3865822946264713459@fsck.pl>
In-Reply-To: <CAJMyd9Yje0QY+Th_QUYuO6JspRvysKqkkxtXq-xgANBASM_Nrw@mail.gmail.com>
References: <2413003.GtkKFizscD@chimera> <CANO=Ty1ZFtpeUespB+nn0gZ8oC7PAkkr7+eTR1U+RyLtGKHKtA@mail.gmail.com> <CAJMyd9Yje0QY+Th_QUYuO6JspRvysKqkkxtXq-xgANBASM_Nrw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Priority: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
X-Zoho-Virus-Status: 1
Cc:  <oss-security@lists.openwall.com>,  <pool@lists.ntp.org>, 
	 <linuxbrad@gmail.com>,  <team@security.debian.org>, 
	"secalert" <secalert@redhat.com>
Date: Fri, 29 Jan 2016 16:47:07 +0100
From: enki <enki@fsck.pl>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6
 pools for scanning purposes
To:  <oss-security@lists.openwall.com>

---- W=C5=82. Pt, 29 sty 2016 15:21:01 +0100 Hazel  napisa=C5=82(a) ----=20
>On 27 January 2016 at 14:43, Kurt Seifried <kseifried@redhat.com> wrote:=20
>> On Wed, Jan 27, 2016 at 4:24 AM, Luca BRUNO <lucab@debian.org> wrote:=20
>> > For oss-sec crowd: is there anything we can do to improve the situatio=
n=20
>> > and avoid=20
>> > similar cases in the future? Should crowd-sourced and fundamental serv=
ices=20
>> > like this=20
>> > be encouraged to move to a stronger WoT?=20
>>=20
>> [...]=20
>>=20
>> Sadly we can't really rely on the IoT device makers to fix this, they ha=
ve=20
>> basically 0 incentive to prevent scanners from hitting their products=20
>> (they're already sold, to late for the customer to make an informed=20
>> decision).=20
>=20
>I hope you'll forgive me making a modest proposal here, but it seems=20
>to me that there might be an opportunity here for Linux distributions=20
>that are upstream of IoT vendors to modify their default configuration=20
>to address this.=20
>=20
>My somewhat off-the-cuff suggestion would be to...=20
>=20
>1. Add an *additional, secondary* IPv6 address to external interfaces that=
 is:=20
>-> a. generated in accordance with the IPv6 Privacy Extensions (i.e. RFC 4=
941)=20
>-> b. firewalled by default against all traffic except NTP in either direc=
tion=20
>=20
>2. Configure the NTP *client* to use this secondary address as the=20
>source for outgoing NTP traffic, instead of the default address?=20
>=20
>...thereby avoiding revealing the primary address of the host to=20
>would-be scanners?=20
>=20

I'd go even further and use the IPv6 privacy-enhanced address for all outgo=
ing connections, not only NTP. It's only a matter of time before someone se=
ts up a debian mirror for example that logs source addresses and launches s=
cans against them.

--=20
enki@fsck.pl

