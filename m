X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["909" "Friday" "25" "March" "2016" "15:55:44" "+0600" "Maxim Solodovnik" "solomax@apache.org" "<CAJmbs8g6dx16mtu8B6V29Zpasf5D_kj5mDuKDYXCTGm87xqA9A@mail.gmail.com>" "28" "[oss-security] [CVE-2016-0784] ZIP file path traversal" nil nil nil "3" "2016032509:55:44" "[oss-security] [CVE-2016-0784] ZIP file path traversal" (number mark "U       solomax@apac Mar 25   28/909   " thread-indent "\"[oss-security] [CVE-2016-0784] ZIP file path traversal\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7433 invoked by uid 550); 25 Mar 2016 10:35:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9495 invoked from network); 25 Mar 2016 09:55:58 -0000
X-Gm-Message-State: AD7BkJKHLcoeXYU3wuOuLwK9gYBjPlggcD3/cmqDubJd2EaujxaT2ZNRAibttHBZAER7cMTKhuc5nt29gpKsIA==
MIME-Version: 1.0
X-Received: by 10.66.155.232 with SMTP id vz8mr19627657pab.53.1458899744349;
 Fri, 25 Mar 2016 02:55:44 -0700 (PDT)
Date: Fri, 25 Mar 2016 15:55:44 +0600
X-Gmail-Original-Message-ID: <CAJmbs8g6dx16mtu8B6V29Zpasf5D_kj5mDuKDYXCTGm87xqA9A@mail.gmail.com>
Message-ID: <CAJmbs8g6dx16mtu8B6V29Zpasf5D_kj5mDuKDYXCTGm87xqA9A@mail.gmail.com>
From: Maxim Solodovnik <solomax@apache.org>
To: Openmeetings user-list <user@openmeetings.apache.org>, dev <dev@openmeetings.apache.org>, 
	security@openmeetings.apache.org, security@apache.org, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] [CVE-2016-0784] ZIP file path traversal

Severity: Moderate

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings 1.9.x - 3.1.0

Description:
The Import/Export System Backups functionality in the OpenMeetings
Administration
menu (http://domain:5080/openmeetings/#admin/backup) is vulnerable to path
traversal via specially crafted file names within ZIP archives. By uploadin=
g an
archive containing a file named ../../../public/hello.txt will write
the file =E2=80=9Chello.txt=E2=80=9D
to the http://domain:5080/openmeetings/public/ directory. This could
be used to, for example,
overwrite the /usr/bin/convert file (or any other 3 rd party
integrated executable)
with a shell script, which would be executed the next time an image
file is uploaded
and imagemagick is invoked.

All users are recommended to upgrade to Apache OpenMeetings 3.1.1

Credit: This issue was identified by Andreas Lindh


Apache OpenMeetings Team
