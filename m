X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["475" "Monday" "6" "March" "2017" "09:48:12" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<1769785.C3oWb3WdBS@blackgate>" "19" "Re: [oss-security] jasper: NULL pointer dereference in jp2_cdef_destroy (jp2_cod.c)" nil nil nil "3" "2017030608:48:12" "[oss-security] jasper: NULL pointer dereference in jp2_cdef_destroy (jp2_cod.c)" (number mark "U       ago@gentoo.o Mar  6   19/475   " thread-indent "\"Re: [oss-security] jasper: NULL pointer dereference in jp2_cdef_destroy (jp2_cod.c)\"\n") "<4852597.N8d9Bx2SxP@blackgate>" ("<4852597.N8d9Bx2SxP@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30321 invoked by uid 550); 6 Mar 2017 08:48:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30303 invoked from network); 6 Mar 2017 08:48:30 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Mon, 06 Mar 2017 09:48:12 +0100
Message-ID: <1769785.C3oWb3WdBS@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.52-gentoo; KDE/4.14.29; x86_64; ; )
In-Reply-To: <4852597.N8d9Bx2SxP@blackgate>
References: <4852597.N8d9Bx2SxP@blackgate>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="nextPart2324803.mE60EUyd0x"
Content-Transfer-Encoding: 7Bit
Subject: Re: [oss-security] jasper: NULL pointer dereference in jp2_cdef_destroy (jp2_cod.c)

--nextPart2324803.mE60EUyd0x
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

On Wednesday 25 January 2017 10:10:35 Agostino Sarubbo 
wrote:
> https://blogs.gentoo.org/ago/2017/01/25/jasper-null-pointer-dereference-in-j
> p2_cdef_destroy-jp2_cod-c

This is fixed in the following commit:
https://github.com/mdadams/jasper/commit/e96fc4fdd525fa
0ede28074a7e2b1caf94b58b0d

-- 
Agostino Sarubbo
Gentoo Linux Developer

--nextPart2324803.mE60EUyd0x--

