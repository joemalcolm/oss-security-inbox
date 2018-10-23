X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1092" "Tuesday" "23" "October" "2018" "16:20:39" "+0200" "Florian Weimer" "fweimer@redhat.com" "<87va5su4lk.fsf@oldenburg.str.redhat.com>" "24" "Re: [oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions" "^Cc:" nil nil "10" "2018102314:20:39" "[oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions" (number mark "        fweimer@redh Oct 23   24/1092  " thread-indent "\"Re: [oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions\"\n") "<20181023133502.GA22933@openwall.com>" ("<DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>" "<87zhv5znqn.fsf@oldenburg.str.redhat.com>" "<20181023133502.GA22933@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3763 invoked by uid 550); 23 Oct 2018 14:20:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3742 invoked from network); 23 Oct 2018 14:20:53 -0000
References: <DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>
	<87zhv5znqn.fsf@oldenburg.str.redhat.com>
	<20181023133502.GA22933@openwall.com>
In-Reply-To: <20181023133502.GA22933@openwall.com> (Solar Designer's message
	of "Tue, 23 Oct 2018 15:35:02 +0200")
Message-ID: <87va5su4lk.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.47]); Tue, 23 Oct 2018 14:20:41 +0000 (UTC)
Cc: oss-security@lists.openwall.com,  Andrew Sandoval <ASandoval@webroot.com>
Date: Tue, 23 Oct 2018 16:20:39 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions
To: Solar Designer <solar@openwall.com>

* Solar Designer:

> 3. Andrew writes: "Most if not all C++ compilers are able to produce
> code from lambdas (similar to nested functions) without compromising the
> call stack."  It'd be helpful to explore this more and see whether
> there's any fundamental difference preventing reuse of the same approach
> (whatever it is) for nested functions as well.  I'd appreciate
> discussion of this on oss-security.  My guess is this probably doesn't
> fit in the existing ABI for C, but I might be wrong.

std::function in C++ isn't just a code pointer.  It's more like a
function descriptor on some architectures, so you don't need to generate
a trampoline because the called code can load ancilarry information
(such as the static chain pointer or other information to access
captured variables), without having to encode this in the pointer
itself.

There are other ways to produce trampolines which do not need an
executable stack, and even ways that avoid code generation at run time
(such as pre-cooked array of trampoline code that gets mapped multiple
times as needed).

Thanks,
Florian
