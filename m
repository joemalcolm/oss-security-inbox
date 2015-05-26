X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["773" "Tuesday" "26" "May" "2015" "11:56:41" "+0200" "Florian Weimer" "fweimer@redhat.com" "<55644359.6090704@redhat.com>" "23" "[oss-security] ELF PLT changes in gcc/binutils/glibc" nil nil nil "5" "2015052609:56:41" "[oss-security] ELF PLT changes in gcc/binutils/glibc" (number mark "        fweimer@redh May 26   23/773   " thread-indent "\"[oss-security] ELF PLT changes in gcc/binutils/glibc\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30587 invoked by uid 550); 26 May 2015 09:56:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30556 invoked from network); 26 May 2015 09:56:55 -0000
Message-ID: <55644359.6090704@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Tue, 26 May 2015 11:56:41 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] ELF PLT changes in gcc/binutils/glibc
To: oss-security@lists.openwall.com

There are some changes in the pipeline which change the way dynamic
linking works, particularly in combination with BIND_NOW/-z now:

GCC and -fno-plt:

  <https://gcc.gnu.org/ml/gcc-patches/2015-05/msg00231.html>

binutils PLT->GOT elision with -Wl,z,now:

  <https://sourceware.org/ml/binutils/2015-05/msg00145.html>

glibc fixes for binutils changes:

  <https://www.sourceware.org/ml/libc-alpha/2015-05/msg00560.html>

I have been asked to comment on these developments, but I feel that I
lack sufficient data to make a recommendation one way or the other.  I
know that some people feel strongly about ROP opportunities and indirect
calls, so they might want to comment (presumably on the glibc mailing
list, libc-alpha).

-- 
Florian Weimer / Red Hat Product Security
