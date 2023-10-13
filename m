Received: (qmail 3945 invoked by uid 550); 13 Oct 2023 17:52:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20123 invoked from network); 13 Oct 2023 17:38:58 -0000
Date: Fri, 13 Oct 2023 19:32:28 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20231013173228.S-hVe%steffen@sdaoden.eu>
In-Reply-To: <CAKe4=-L2udnhRQ7EVOMihrExiYUVoor3E0+FbNxvZ8iB=pyQ1w@mail.gmail.com>
References: <51049a59-5e4b-4def-895f-97b9c2b92b24@oracle.com>
 <20231010192306.GA14591@inutil.org>
 <CAKe4=-L2udnhRQ7EVOMihrExiYUVoor3E0+FbNxvZ8iB=pyQ1w@mail.gmail.com>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-530-gb93147aede
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2023-44487: HTTP/2 Rapid Reset attack
 against many implementations

Jonathan Wright wrote in
 <CAKe4=3D-L2udnhRQ7EVOMihrExiYUVoor3E0+FbNxvZ8iB=3DpyQ1w@mail.gmail.com>:

[i resort a bit]

 |On Tue, Oct 10, 2023 at 2:23=E2=80=AFPM Moritz Muehlenhoff <jmm@inutil.or=
g> wrote:
 |> On Tue, Oct 10, 2023 at 11:40:06AM -0700, Alan Coopersmith wrote:
 |>> Information I've found so far on open source implementations (most via
 |> the
 |>> current listings in the CVE) include:
 |>
 |> Apache Trafficserver is also affected:
 |> https://lists.apache.org/thread/5py8h42mxfsn8l1wy6o41xwhsjlsd87q

 |OpenLitespeed is not impacted:
 |https://blog.litespeedtech.com/2023/10/11/rapid-reset-http-2-vulnerablilt=
y/

It did not really surprise me that Glenn Strauss, the wonderful
developer of the lighttpd that i use for eight years, had to go
like this (i hope he does not mind i quote #lighttpd here):

  ...
  01:45 < gps> [..]No, I did not have prior knowledge.
  ...
  02:20 < gps> Confirmed: while all web servers implementing
    HTTP/2 are exposed to the attack in CVE-2023-44487, the way each
    web server software processes HTTP/2 affects the size of the
    impact of the attack.  With lighttpd, the impact is largely
    limited to the CPU usage parsing the HTTP/2 HEADERS frame,
    including HPACK decoding.
  ...
  03:58 < gps> To be clear, the attack still causes lighttpd to
    use more resources, but the amplification of resource
    commitment is constrained in lighttpd due to the design
    choices made for lighttpd HTTP/2.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
