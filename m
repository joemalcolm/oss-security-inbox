X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["899" "Thursday" "19" "November" "2020" "11:54:07" "-0500" "David A. Wheeler" "dwheeler@dwheeler.com" "<861A949F-D5C8-4AE0-829D-E7C2B4F74137@dwheeler.com>" "25" "Re: [oss-security] libass ass_outline.c signed integer overflow" nil nil nil "11" "2020111916:54:07" "[oss-security] libass ass_outline.c signed integer overflow" (number mark "U       dwheeler@dwh Nov 19   25/899   " thread-indent "\"Re: [oss-security] libass ass_outline.c signed integer overflow\"\n") "<20201119053416.vfvkqvgsmbmp2wnd@moyka>" ("<CAEFBov0z-zr4q=_srb3q7gq1-f1P6GBf78p8GYUj0DvsXVKLTw@mail.gmail.com>" "<20201119053416.vfvkqvgsmbmp2wnd@moyka>") nil nil nil nil nil nil nil "Re: [oss-security] libass ass_outline.c signed integer overflow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26105 invoked by uid 550); 19 Nov 2020 16:54:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26087 invoked from network); 19 Nov 2020 16:54:28 -0000
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Date: Thu, 19 Nov 2020 11:54:07 -0500
References: <CAEFBov0z-zr4q=_srb3q7gq1-f1P6GBf78p8GYUj0DvsXVKLTw@mail.gmail.com>
 <20201119053416.vfvkqvgsmbmp2wnd@moyka>
To: oss-security@lists.openwall.com
In-Reply-To: <20201119053416.vfvkqvgsmbmp2wnd@moyka>
Message-Id: <861A949F-D5C8-4AE0-829D-E7C2B4F74137@dwheeler.com>
X-Mailer: Apple Mail (2.3608.120.23.2.4)
Subject: Re: [oss-security] libass ass_outline.c signed integer overflow



> On Nov 19, 2020, at 12:34 AM, Ian Zimmerman <itz@very.loosely.org> wrote:
>=20
> On 2020-09-29 08:19, Fstark wrote:
>=20
>> In `ass_outline_construct`'s call to `outline_stroke` a signed integer
>> overflow happens *(undefined behaviour)*. On my machine signed overflow
>> happens to wrap around to a negative value, thus failing the assert.
>> https://github.com/libass/libass/issues/431
>>=20
>> https://github.com/libass/libass/pull/432
>=20
> I have followed the links above, and this seems to be an example of a
> situation where the CVE process has failed. It is still not fixed in
> Debian, possibly for that reason. I'll report a Debian bug today.

I read through the issue discussion. As best as I can tell, no one filed fo=
r a CVE, so there was no CVE.
Did I misunderstand something?

If my understanding is correct, that is *NOT* a failure of the CVE process.

--- David A. Wheeler

