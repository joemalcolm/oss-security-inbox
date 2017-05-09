X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1827" "Tuesday" "9" "May" "2017" "14:49:56" "+0100" "Simon MacDonald" "macdonst@apache.org" "<CAM1AYQCj1EOvyXJ9xH9tMqNn_V0p9G2A1MZD0bu92Q3506q8Rw@mail.gmail.com>" "50" "[oss-security] CVE-2016-6799: Internal system information leak" nil nil nil "5" "2017050913:49:56" "[oss-security] CVE-2016-6799: Internal system information leak" (number mark "U       macdonst@apa May  9   50/1827  " thread-indent "\"[oss-security] CVE-2016-6799: Internal system information leak\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32709 invoked by uid 550); 9 May 2017 14:52:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26384 invoked from network); 9 May 2017 13:50:30 -0000
X-Gm-Message-State: AODbwcCMaOn1LsU52Znkp1gGnp9xF4RcYOWWIJGl5rfQ4eMsr6G4lAQy
	LuGCVYJmGRr6cbj/qW+6FybHWdq5fg==
X-Received: by 10.36.36.193 with SMTP id f184mr1251270ita.111.1494337817130;
 Tue, 09 May 2017 06:50:17 -0700 (PDT)
MIME-Version: 1.0
From: Simon MacDonald <macdonst@apache.org>
Date: Tue, 9 May 2017 14:49:56 +0100
X-Gmail-Original-Message-ID: <CAM1AYQCj1EOvyXJ9xH9tMqNn_V0p9G2A1MZD0bu92Q3506q8Rw@mail.gmail.com>
Message-ID: <CAM1AYQCj1EOvyXJ9xH9tMqNn_V0p9G2A1MZD0bu92Q3506q8Rw@mail.gmail.com>
To: "dev@cordova.apache.org" <dev@cordova.apache.org>, 
	"private@cordova.apache.org" <private@cordova.apache.org>, security <security@apache.org>, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com, 
	Mark Ward <mark.ward@mind-click.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2016-6799: Internal system information leak

CVE-2016-6799: Internal system information leak

Severity: High

Vendor: The Apache Software Foundation

Versions Affected: Cordova Android (5.2.2 and below)

Description: The application calls methods of the Log class. Messages
passed to these methods (Log.v(), Log.d(), Log.i(), Log.w(), and
Log.e()) are stored in a series of circular buffers on the device. By
default, a maximum of four 16 KB rotated logs are kept in addition to
the current log. The logged data can be read using Logcat on the
device. When using platforms prior to Android 4.1 (Jelly Bean), the
log data is not sandboxed per application=CD=BE any application installed
on the device has the capability to read data logged by other
applications.

Upgrade path: Developers who are concerned about this issue should
upgrade to 6.0.0 or later and install cordova plugins whose versions
are equal to or greater than:

cordova-plugin-battery-status: 1.2.0
cordova-plugin-camera: 2.3.0
cordova-plugin-console: 1.0.4
cordova-plugin-contacts: 2.2.0
cordova-plugin-device: 1.1.3
cordova-plugin-device-motion: 1.2.2
cordova-plugin-device-orientation: 1.0.4
cordova-plugin-dialogs: 1.3.0
cordova-plugin-file: 4.3.0
cordova-plugin-file-transfer: 1.6.0
cordova-plugin-geolocation: 2.3.0
cordova-plugin-globalization: 1.0.4
cordova-plugin-inappbrowser: 1.5.0
cordova-plugin-media: 2.4.0
cordova-plugin-media-capture: 1.4.0
cordova-plugin-network-information: 1.3.0
cordova-plugin-splashscreen: 4.0.0
cordova-plugin-statusbar: 2.2.0
cordova-plugin-test-framework: 1.1.3
cordova-plugin-vibration: 2.1.2
cordova-plugin-whitelist: 1.3.0
cordova-plugin-wkwebview-engine: 1.1.0

Mitigation Steps: If developers are unable to install the latest versions,
this vulnerability can easily be mitigated by not putting sensitive
information in the log statements.

Credit: Mark Ward
