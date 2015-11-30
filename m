X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["480" "Monday" "30" "November" "2015" "09:43:25" "+0100" "Tomas Hoger" "thoger@redhat.com" "<20151130094325.5cc60379@redhat.com>" "14" "Re: [oss-security] Re: Heap Overflow in PCRE" "^Cc:" nil nil "11" "2015113008:43:25" "[oss-security] Re: Heap Overflow in PCRE" (number mark "        thoger@redha Nov 30   14/480   " thread-indent "\"Re: [oss-security] Re: Heap Overflow in PCRE\"\n") "<20151129105801.918E7332004@smtpvbsrv1.mitre.org>" ("<CALx_OUAUgrpm0W0E=qDq_hw_3tZ3e+wiRjfQ99pg+n4xO-93cw@mail.gmail.com>" "<20151129105801.918E7332004@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1506 invoked by uid 550); 30 Nov 2015 08:43:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1488 invoked from network); 30 Nov 2015 08:43:42 -0000
Message-ID: <20151130094325.5cc60379@redhat.com>
In-Reply-To: <20151129105801.918E7332004@smtpvbsrv1.mitre.org>
References: <CALx_OUAUgrpm0W0E=qDq_hw_3tZ3e+wiRjfQ99pg+n4xO-93cw@mail.gmail.com>
	<20151129105801.918E7332004@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Cc: oss-security@lists.openwall.com
Date: Mon, 30 Nov 2015 09:43:25 +0100
From: Tomas Hoger <thoger@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Heap Overflow in PCRE
To: cve-assign@mitre.org

On Sun, 29 Nov 2015 05:58:01 -0500 (EST) cve-assign@mitre.org wrote:

> JavaScript may be "something else" in most cases, e.g.,
> 
>   http://blog.chromium.org/2009/02/irregexp-google-chromes-new-regexp.html
>   https://github.com/v8/v8/tree/master/src/regexp
>   https://hg.mozilla.org/mozilla-central/file/tip/js/src/irregexp

KDE/Konqueror uses pcre for JS regexps.

http://lxr.kde.org/source/kde/kdelibs/kjs/regexp.cpp?v=stable-qt4

-- 
Tomas Hoger / Red Hat Product Security
