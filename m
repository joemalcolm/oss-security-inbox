X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1171" "Tuesday" "6" "October" "2015" "11:20:57" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<56136141.2040503@redhat.com>" "37" "[oss-security] Fwd: [vs-plain] CVE-2015-5261" nil nil nil "10" "2015100605:50:57" "[oss-security] Fwd: [vs-plain] CVE-2015-5261" (number mark "U       huzaifas@red Oct  6   37/1171  " thread-indent "\"[oss-security] Fwd: [vs-plain] CVE-2015-5261\"\n") "<560A2023.7010200@redhat.com>" ("<560A2023.7010200@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8183 invoked by uid 550); 6 Oct 2015 05:37:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8160 invoked from network); 6 Oct 2015 05:37:15 -0000
References: <560A2023.7010200@redhat.com>
To: oss-security@lists.openwall.com
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
X-Forwarded-Message-Id: <560A2023.7010200@redhat.com>
Message-ID: <56136141.2040503@redhat.com>
Date: Tue, 6 Oct 2015 11:20:57 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <560A2023.7010200@redhat.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Subject: [oss-security] Fwd: [vs-plain] CVE-2015-5261

Making this public as promised on distros list!


-------- Forwarded Message --------
Subject: [vs-plain] CVE-2015-5261
Date: Tue, 29 Sep 2015 10:52:43 +0530
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
To: distros@vs.openwall.org

Hello Vendors,

Frediano Ziglio of Red Hat has found a security flaw in spice related
to, host memory access from guest using crafted images. Details as follows:

It is possible for a guest issuing QXL commands to host to allow reading
and writing host memory in a range of about 16-20gb.
The guest can create a surface very large (say 1000000 x 1000000). If
width * height overflow the 32 bit and became a small number the host
will accept the command and will create the surface. Now guest can copy
areas of surfaces to access any area of memory covered by the image.
Considering overflows, pixman implementation and image formats (32 bit,
top-down or down-top) the range (the guest pass an offset into video
memory for the start) the range if about +/- 8gb.


We have assigned CVE-2015-5261  to this issue.


Reference:
https://bugzilla.redhat.com/show_bug.cgi?id=1261889


-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team



