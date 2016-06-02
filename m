X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1158" "Thursday" "2" "June" "2016" "13:57:57" "+0200" "Adam Maris" "amaris@redhat.com" "<19b69f94-6f96-fc5f-5384-17ee2c399f43@redhat.com>" "37" "Re: [oss-security] CVE Request: bad USB host adapter implementation can corrupt memory/brick machine" "^Date:" nil nil "6" "2016060211:57:57" "[oss-security] CVE Request: bad USB host adapter implementation can corrupt memory/brick machine" (number mark "        amaris@redha Jun  2   37/1158  " thread-indent "\"Re: [oss-security] CVE Request: bad USB host adapter implementation can corrupt memory/brick machine\"\n") "<20160602091013.GD26429@suse.de>" ("<20160602091013.GD26429@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24166 invoked by uid 550); 2 Jun 2016 11:58:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24142 invoked from network); 2 Jun 2016 11:58:11 -0000
References: <20160602091013.GD26429@suse.de>
Message-ID: <19b69f94-6f96-fc5f-5384-17ee2c399f43@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <20160602091013.GD26429@suse.de>
Content-Type: multipart/alternative;
 boundary="------------63CF3FF452102D9875D81176"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Thu, 02 Jun 2016 11:57:59 +0000 (UTC)
Date: Thu, 2 Jun 2016 13:57:57 +0200
From: Adam Maris <amaris@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: bad USB host adapter implementation
 can corrupt memory/brick machine
To: oss-security@lists.openwall.com

--------------63CF3FF452102D9875D81176
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 02/06/16 11:10, Marcus Meissner wrote:

> Hi,
>
> reported here:
>
> https://marc.info/?l=3Dlinux-usb&m=3D146480770532266&w=3D2
>
> issue is that the Frescologic device id 1009 host controller apparently
> has a broken XHCI STREAMS implementation which would lead to memory corru=
ptions
>
> Redhat might have already assigned a CVE.
>
> I am not sure if this is controllable for code execution, but at least US=
B devices can be used
> to brick a machine with the kernel running (local denial of service)?
>
> Ciao, Marcus

Red Hat hasn't assigned CVE. Overall, this has only minor security
implications. Bricking machine doesn't seem to be easily reproducible,
since on the second tested mobo it merely showed as a random memory
corruption and hard locked system. It requires specific class of
external usb devices getting plugged into machine with specific broken
xhci controller.

--=20
Adam Mari=9A, Red Hat Product Security
1CCD 3446 0529 81E3 86AF  2D4C 4869 76E7 BEF0 6BC2


--------------63CF3FF452102D9875D81176--
