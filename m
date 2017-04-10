X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1453" "Monday" "10" "April" "2017" "07:47:33" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<712547.523991333-sendEmail@localhost>" "49" "[oss-security] binutils: two NULL pointer dereference in elflink.c" nil nil nil "4" "2017041007:47:33" "[oss-security] binutils: two NULL pointer dereference in elflink.c" (number mark "U       ago@gentoo.o Apr 10   49/1453  " thread-indent "\"[oss-security] binutils: two NULL pointer dereference in elflink.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23785 invoked by uid 550); 10 Apr 2017 07:47:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23750 invoked from network); 10 Apr 2017 07:47:51 -0000
Message-ID: <712547.523991333-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 10 Apr 2017 07:47:33 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-739597.175111161"
Subject: [oss-security] binutils: two NULL pointer dereference in elflink.c

------MIME delimiter for sendEmail-739597.175111161
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
binutils are a collection of binary tools necessary to build programs.

An updated clang version were able to discover two null pointer dereference in the following simple way:

# echo "int main () { return 0; }" > test.c
# cc test.c -o test
/tmp/portage/sys-devel/binutils-2.28/work/binutils-2.28/bfd/elflink.c:124:12: runtime error: member access within null pointer of type 'struct elf_link_hash_entry'                            

/tmp/portage/sys-devel/binutils-2.28/work/binutils-2.28/bfd/elflink.c:11979:58: runtime error: member access within null pointer of type 'elf_section_list' (aka 'struct elf_section_list')  
Affected version:
2.28

Fixed version:
N/A

Commit fix:
https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;h=ad32986fdf9da1c8748e47b8b45100398223dba8

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-7614

Timeline:
2017-04-01: bug discovered and reported to upstream
2017-04-04: upstream released a patch
2017-04-05: blog post about the issue
2017-04-09: CVE assigned

Note:
This bug was found with clang’s Undefined Behavior Sanitizer.

Permalink:
https://blogs.gentoo.org/ago/2017/04/05/binutils-two-null-pointer-dereference-in-elflink-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-739597.175111161--

