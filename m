X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3101" "Thursday" "30" "July" "2020" "13:48:41" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" nil "87" nil "^Date:" nil nil "7" nil nil (number mark "        Jason@zx2c4. Jul 30   87/3101  " thread-indent "\"[oss-security] UEFI SecureBoot bypass fixes rolled out to kernels below radar\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] UEFI SecureBoot bypass fixes rolled out to kernels below radar" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28411 invoked by uid 550); 30 Jul 2020 11:48:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28379 invoked from network); 30 Jul 2020 11:48:57 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=date:from:to
	:subject:message-id:mime-version:content-type; s=mail; bh=M0+7uV
	fv4tn0UKV0N9hNFhvS7t8=; b=e8GG1Kb3rfktzE5mFsivfJ40QF35wvCW5Zn1at
	jsxRCTKi4B6a17KEsgD5YdDdE0GQjhI47KPEL6nun6nacuSHU9Xv4+OBqEQS7RmD
	oPf6gTCt67zjIOcGPsuz9423rXD2cBL4xbjJW79MPxz7QwpO0h31Dkfc22CO5JfE
	jKGIbvg6Tlfze64W1Hk7RdsAKhFpI0y/fo/eidXbUl4SDFohvk1mogOWQrUjY/iZ
	FyPjRsHd8m2TwJ9MSn7dbBv1pywXMh2MMKBsuC2PE1fmKDQuRGKHWgDg6hJbmNb6
	f0S7zJv9WTMZfnrZ0NVvoqQsPW+R4D5s+araFrhpfIOrFJTA==
Message-ID: <20200730114841.GA513718@zx2c4.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Date: Thu, 30 Jul 2020 13:48:41 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] UEFI SecureBoot bypass fixes rolled out to kernels below radar
To: oss-security@lists.openwall.com

Hi,

I thought I should mention that yesterday's UEFI SecureBoot bypass
headlines neglected to mention the bugs I found over a month ago (with
the exception of Debian's announcement, which got some details wrong
initially but those have since been rectified).

It appears that Linux vendors are now releasing fixes for:

- CVE-2019-20908
  https://git.zx2c4.com/american-unsigned-language/tree/american-unsigned-language.sh
  https://www.openwall.com/lists/oss-security/2020/06/14/1
  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-20908

- CVE-2020-15780
  https://git.zx2c4.com/american-unsigned-language/tree/american-unsigned-language-2.sh
  https://www.openwall.com/lists/oss-security/2020/06/15/3
  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-15780

In the Red Hat Enterprise Linux 8 kernel sources, diffing yesterday's
release with the one from a few weeks prior, we see a patch for both of
these, which I've put at the bottom of this email.

It seems like mention of these was left out from the advisories that
were making news yesterday from Microsoft/Red Hat/etc, presumably
because there's no shiny logo and press release route with these
exploits, but rather just shoddy exploits and posted them here,
alongside patches on LKML.

But anyway, PSA: if you're scrambling to get your systems updated for
this, be sure to update your kernel in addition to GRUB2. This is more
than just a bootloader situation. And I'm sure we'll have plenty more
SecureBoot bypasses coming up too.

Jason


RHEL8 patch, which shipped yesterday:

diff -ru linux-4.18.0-193.13.2.el8_2/drivers/acpi/acpi_configfs.c linux-4.18.0-193.14.3.el8_2/drivers/acpi/acpi_configfs.c
--- linux-4.18.0-193.13.2.el8_2/drivers/acpi/acpi_configfs.c	2020-07-14 00:38:37.000000000 +0200
+++ linux-4.18.0-193.14.3.el8_2/drivers/acpi/acpi_configfs.c	2020-07-20 16:02:22.000000000 +0200
@@ -14,6 +14,7 @@
 #include <linux/module.h>
 #include <linux/configfs.h>
 #include <linux/acpi.h>
+#include <linux/kernel.h>

 #include "acpica/accommon.h"
 #include "acpica/actables.h"
@@ -31,7 +32,10 @@
 {
 	const struct acpi_table_header *header = data;
 	struct acpi_table *table;
-	int ret;
+	int ret = kernel_is_locked_down("Modifying ACPI tables");
+
+	if (ret)
+		return ret;

 	table = container_of(cfg, struct acpi_table, cfg);

diff -ru linux-4.18.0-193.13.2.el8_2/drivers/firmware/efi/efi.c linux-4.18.0-193.14.3.el8_2/drivers/firmware/efi/efi.c
--- linux-4.18.0-193.13.2.el8_2/drivers/firmware/efi/efi.c	2020-07-14 00:38:37.000000000 +0200
+++ linux-4.18.0-193.14.3.el8_2/drivers/firmware/efi/efi.c	2020-07-20 16:02:22.000000000 +0200
@@ -31,6 +31,7 @@
 #include <linux/acpi.h>
 #include <linux/ucs2_string.h>
 #include <linux/memblock.h>
+#include <linux/kernel.h>

 #include <asm/early_ioremap.h>

@@ -245,6 +246,11 @@
 static char efivar_ssdt[EFIVAR_SSDT_NAME_MAX] __initdata;
 static int __init efivar_ssdt_setup(char *str)
 {
+	int ret = kernel_is_locked_down("Modifying ACPI tables");
+
+	if (ret)
+		return ret;
+
 	if (strlen(str) < sizeof(efivar_ssdt))
 		memcpy(efivar_ssdt, str, strlen(str));
 	else


