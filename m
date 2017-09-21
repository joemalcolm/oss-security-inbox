X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2375" "Thursday" "21" "September" "2017" "16:50:07" "+0200" "Thomas Jarosch" "thomas.jarosch@intra2net.com" "<3362705.8pMVodbJo5@storm.m.i2n>" "70" "[oss-security] CVE request: code execution in Horde_Image 2.0.0 to 2.5.1" nil nil nil "9" "2017092114:50:07" "[oss-security] CVE request: code execution in Horde_Image 2.0.0 to 2.5.1" (number mark "U       thomas.jaros Sep 21   70/2375  " thread-indent "\"[oss-security] CVE request: code execution in Horde_Image 2.0.0 to 2.5.1\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10080 invoked by uid 550); 21 Sep 2017 15:12:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28028 invoked from network); 21 Sep 2017 14:50:20 -0000
X-Virus-Scanned: by Intra2net Mail Security (AVE=8.3.48.24,VDF=8.14.27.244)
From: Thomas Jarosch <thomas.jarosch@intra2net.com>
To: oss-security@lists.openwall.com
Date: Thu, 21 Sep 2017 16:50:07 +0200
Message-ID: <3362705.8pMVodbJo5@storm.m.i2n>
Organization: Intra2net AG
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [oss-security] CVE request: code execution in Horde_Image 2.0.0 to 2.5.1

Hello oss security,

Intra2net AG found a code execution vulnerability in the "Horde_Image" library 
of the Horde framework (https://www.horde.org/). The "_raw()" function of the 
ImageMagick "im" backend passes the "$index" parameter unsanitized to the 
shell. This parameter is f.e. exposed by the getImageAtIndex($index) function.

No core horde application exposes the $index parameter directly
to the net, so a "remote" code execution might be given for third party 
applications only. Read: The risk is low for normal horde users.

Affected versions are 2.0.0 to 2.5.1.
A fixed version 2.5.2 has been released.

Upstream fix:
https://github.com/horde/horde/commit/eb3afd14c22c77ae0d29e2848f5ac726ef6e7c5b

Official release announcement:
https://marc.info/?l=horde-announce&m=150600299528079&w=2
-----------------------------------
Hello,

a Remote Code Execution vulnerability has been found in the  
Horde_Image library when using the "Im" backend that utilizes  
ImageMagick's "convert" utility. It's not exploitable through any  
Horde application, because the code path to the vulnerability is not  
used by any Horde code. Custom applications using the Horde_Image  
library might be affected though. This vulnerability affects all  
versions of Horde_Image from 2.0.0 to 2.5.1.

A fixed version of the Horde_Image (version 2.5.2) library has already  
been released and everybody is advised to upgrade to Horde_Image 2.5.2  
as soon as possible.

Thanks to long-time contributor and supporter Thomas Jarosch  
<thomas.jarosch@intra2net.com> for discovering and reporting these  
vulnerabilities.

--
Jan Schneider
The Horde Project
https://www.horde.org/
-----------------------------------


Timeline:
2017-09-15: Found the issue during manual code review
            after the recent CVE-2017-9773 issue.

2017-09-15: Sent patch to security@horde.org

2017-09-16: Checked horde code base if any horde core
            application exposes the vulnerable API.

2017-09-19: Wrote to security@horde.org again
            that the security risk for core horde apps is low,
            no embargo via linux-distros@ needed.

2017-09-19: Fix is committed to git.

2017-09-21: Release of fixed version 2.5.2 by the Horde project.


Thanks to Jan Schneider of the Horde project
for the timely release of the fixed version.


Best regards,
Thomas Jarosch / Intra2net AG

