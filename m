X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["888" "Sunday" "22" "January" "2017" "10:26:36" "+1300" "Murray McAllister" "murray.mcallister@insomniasec.com" "<f7ba24cc-1b0e-7ea8-fd2d-d062c817d55d@insomniasec.com>" "26" "[oss-security] CVE request: Linux kernel: vc4: int overflow leading to heap-based buffer overflow" nil nil nil "1" "2017012121:26:36" "[oss-security] CVE request: Linux kernel: vc4: int overflow leading to heap-based buffer overflow" (number mark "U       murray.mcall Jan 22   26/888   " thread-indent "\"[oss-security] CVE request: Linux kernel: vc4: int overflow leading to heap-based buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13559 invoked by uid 550); 21 Jan 2017 22:53:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9710 invoked from network); 21 Jan 2017 21:26:56 -0000
To: oss-security@lists.openwall.com
From: Murray McAllister <murray.mcallister@insomniasec.com>
Message-ID: <f7ba24cc-1b0e-7ea8-fd2d-d062c817d55d@insomniasec.com>
Date: Sun, 22 Jan 2017 10:26:36 +1300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.5.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE request: Linux kernel: vc4: int overflow leading to heap-based
 buffer overflow

Hi,

This issue affects the VC4_SUBMIT_CL IOCTL in the VideoCore DRM driver,
so probably only affects devices like the Raspberry Pi.

Quoting from Eric Anholt's post:

""
We copy the unvalidated ioctl arguments from the user into kernel
temporary memory to run the validation from, to avoid a race where the
user updates the unvalidate contents in between validating them and
copying them into the validated BO.

However, in setting up the layout of the kernel side, we failed to
check one of the additions (the roundup() for shader_rec_offset)
against integer overflow, allowing a nearly MAX_UINT value of
bin_cl_size to cause us to under-allocate the temporary space that we
then copy_from_user into.
""

https://lkml.org/lkml/2017/1/17/761
https://lkml.org/lkml/2017/1/17/759 (discovered by Ingo Molnar)

I am not subscribed to the list so please mail me if you have any issues.

Chur
