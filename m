Received: (qmail 1138 invoked by uid 550); 1 May 2026 15:13:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24404 invoked from network); 1 May 2026 15:08:37 -0000
Message-ID: <315f9a67337d8e930cfb95a4b644946bf2f69687.camel@thirddimension.net>
From: Reid Sutherland <reid@thirddimension.net>
To: oss-security@lists.openwall.com
Date: Fri, 01 May 2026 11:08:25 -0400
In-Reply-To: <12a8c210-2f79-4fa2-a9c6-bbd203325f42@oracle.com>
References: <afJorKIje4O6dXbH@netmeister.org>
	 <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net> <87se8dgicq.fsf@gentoo.org>
	 <afL-QhLfEKqHZqka@eldamar.lan> <2026043026-treat-devotion-23d7@gregkh>
	 <CAPmip_zqswCZ6PfnW_DPEoSuY6Jewfw1eyeP_azYH4JFgRipNA@mail.gmail.com>
	 <12a8c210-2f79-4fa2-a9c6-bbd203325f42@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
MIME-Version: 1.0
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

On Thu, 2026-04-30 at 10:25 -0700, Alan Coopersmith wrote:

> On 4/30/2026 12:17 AM, cyber security wrote:
>=20
> > That is very terrifying, is it is 10.0 score?
>=20
>=20
> A 10.0 score would require that a vulnerability be exploitable over
> the network, without having to login to a local account on the system
> first to run the exploit script.


Sorry but I'm having a hard time understanding the actual threat level
of this vulnerability.

# lsmod |grep aead=20=20
#

Does anything load the vulnerable module by default or not?  If not,
this should be low-rated IMO.

Is this a big test to highlight all the people that have no idea what
they're doing (about to find out if that's me)?  Right now I'm seeing
people blindly copy/paste an advisory with "RHEL 14.3" in it.


