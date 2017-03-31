X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2395" "Friday" "31" "March" "2017" "14:09:49" "-0500" "Mark Felder" "feld@feld.me" "<1490987389.392790.930214152.29A71F3D@webmail.messagingengine.com>" "76" "[oss-security] CVE Request -- mapr: information disclosure vulnerability" nil nil nil "3" "2017033119:09:49" "[oss-security] CVE Request -- mapr: information disclosure vulnerability" (number mark "U       feld@feld.me Mar 31   76/2395  " thread-indent "\"[oss-security] CVE Request -- mapr: information disclosure vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21764 invoked by uid 550); 31 Mar 2017 19:29:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11580 invoked from network); 31 Mar 2017 19:10:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feld.me; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to:x-me-sender:x-me-sender:x-sasl-enc; s=
	mesmtp; bh=tsjUN4aMGNLFfNPfOMU42THwBKiycLphR0PJdvgM090=; b=WBnkR
	DgqFoyopWZuR25SreslI+vTs+Chs1U3snrHynx2MiFIMnNPR+ICO8a+DyiFZ43Bj
	nmTOsRwduvTNR8xvPexreOwgkb72vRhRiKVlz7yaY2Mv+mngrpJntlnMq0FbQlGw
	IJgQvsCharJks6uF4qFTtfOcSSbw4McjrotHxg=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:message-id:mime-version:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=tsjUN4aMGNLFfNPfOMU42THwBKiyc
	LphR0PJdvgM090=; b=Hs7l5pv3YX2D6ZaS3cFZFb1/F92HgM5rzz/pid7e1hTAk
	rsb8r22rUe9MHLj6z4wlEZOKdBEu+WL6RShSL/kVpBBTwHNZJjMGiAFVuO1qzoVI
	i5N98LHxWieydF+lWquJYpsstMwihcAKKowe3fcXmjDxVaU/Nbhvl5SGf5CGTKuU
	MEEV7ZKN0CLAhzKtSB3M4RPE+HtPWGuusQodwQqaPidovM2XwH7jl8WyG8O0MEvh
	gcLZ3s+mAl5X7XAHCfgGu6T43vPvsG0Bmdh9ToM/FSLZ0jEiyv8RQFqrZ07dc2ci
	NNoM8SpLPEFYuPRnZJ/6u7cSVzib/7tstZlX4K9UQ==
X-ME-Sender: <xms:faneWD0MrF568giL4Kk5A_bQlSOMJmaGScN_W3KPxylRFkB4qXOLQQ>
Message-Id: <1490987389.392790.930214152.29A71F3D@webmail.messagingengine.com>
From: Mark Felder <feld@feld.me>
To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="utf-8"
X-Mailer: MessagingEngine.com Webmail Interface - ajax-6cc8b445
Date: Fri, 31 Mar 2017 14:09:49 -0500
Subject: [oss-security] CVE Request -- mapr: information disclosure vulnerability

Hello,

The mapr web frontend component creates an information disclosure
vulnerability.  During the setup of mapr the configure.sh script calls a
function ConfigureWSRole:

function ConfigureWSRole() {
  if [ $clientOnly -eq 0 -a $dontChangeSecurityPermissionsOn -eq 0 ];
  then
    ConfigureRunUserForWS
  fi

This calls ConfigureRunUserForWS from configure-common.sh:

function ConfigureRunUserForWS() {
  local val=`getent group shadow 2>/dev/null`
  if [ "$?" != "0" -o "$val" = "" ]; then
    # Create a group named shadow
    groupadd shadow  >> $logFile 2>&1
  fi
  # Add CURR_USER to the group wheel
  if [ -f /etc/SuSE-release ]; then
      # Add CURR_USER to the group wheel for SUSE
      usermod -A shadow $MAPR_USER >> $logFile 2>&1
      STATUS=$?
      #
      # The '-A' option has been removed from SuSE 12 
      #
      if [ $STATUS -ne 0 ]; then
          usermod -a -G shadow $MAPR_USER  >> $logFile 2>&1
      fi
  else
      usermod -a -G $MAPR_GROUP,shadow $MAPR_USER  >> $logFile 2>&1
  fi
  # Change group-owner of /etc/shadow
  chgrp shadow /etc/shadow  >> $logFile 2>&1
  # Allow read permissions for user shadow
  chmod ug+r /etc/shadow >> $logFile 2>&1
}

This results in a shadow file that is now readable to the application:

# ls -la /etc/shadow
-r--r-----. 1 root shadow 657 Mar 30 16:09 /etc/shadow
# grep shadow /etc/group
shadow:x:1000:mapr

The option to disable this codepath, -no-auto-permission-update,  is not
recommended by Mapr and comes with a warning in the script as it will
break the webserver's ability to authenticate the local mapr user, which
is used to administer the cluster:

        echo "    -no-auto-permission-update - do not update the system
        security permissions automatically"
        echo "                             Warn: Features like WebServer
        might not work properly"
        echo "                             default: disabled"

The website docs[1] casually describe the option, "Pass this option to
prevent MapR from silently altering permissions in /etc/shadow."

These files are part of the mapr-core-internal package:

# rpm -fq /opt/mapr/server/configure.sh
mapr-core-internal-5.2.0.39122.GA-1.x86_64
# rpm -fq /opt/mapr/server/configure-common.sh
mapr-core-internal-5.2.0.39122.GA-1.x86_64


Thanks

[1] http://maprdocs.mapr.com/home/ReferenceGuide/configure.sh.html

-- 
  Mark Felder
  feld@feld.me
