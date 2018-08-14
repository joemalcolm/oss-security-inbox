X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3821" "Tuesday" "14" "August" "2018" "17:57:18" "+0200" "Marcus Meissner" "meissner@suse.de" "<20180814155718.3gcvbcs7am4xrpy5@suse.de>" "117" "[oss-security] CVE-2018-14722: btrfsmaintenance: Code execution" nil nil nil "8" "2018081415:57:18" "[oss-security] CVE-2018-14722: btrfsmaintenance: Code execution" (number mark "U       meissner@sus Aug 14  117/3821  " thread-indent "\"[oss-security] CVE-2018-14722: btrfsmaintenance: Code execution\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5275 invoked by uid 550); 14 Aug 2018 15:57:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5257 invoked from network); 14 Aug 2018 15:57:31 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Tue, 14 Aug 2018 17:57:18 +0200
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <20180814155718.3gcvbcs7am4xrpy5@suse.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="mqxezyyxfzbpffu6"
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: NeoMutt/20170421 (1.8.2)
Subject: [oss-security] CVE-2018-14722: btrfsmaintenance: Code execution

--mqxezyyxfzbpffu6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

SUSE employee Fabian Vogt has found a shell code injection issue in the "btrfsmaintenance" tools.

https://bugzilla.suse.com/show_bug.cgi?id=1102721

Mounting btrfs images with a label including shell injection characters could cause
the cron jobs (running as root) to execute the include shellcode.

Our proposed fix attached to this email.

bad image can be created with:
	mkfs.btrfs --label "`/evil/command`' /dev/sdx

Ciao, Marcus

--mqxezyyxfzbpffu6
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment; filename="btrfsmaintenance-CVE-2018-14722.patch"

@@ -, +, @@ 
 mkfs.btrfs --label "`/evil/command`' /dev/sdx
 # /dev/sdx is auto-mounted
 # the respective btrfs-{scrub,trim,balance} job with configured 'auto' runs
---
 btrfs-balance.sh           |  2 +-
 btrfs-scrub.sh             |  2 +-
 btrfs-trim.sh              |  2 +-
 btrfsmaintenance-functions | 22 +++++++++++-----------
 4 files changed, 14 insertions(+), 14 deletions(-)
--- a/btrfs-balance.sh	
+++ a/btrfs-balance.sh	
@@ -18,7 +18,7 @@ LOGIDENTIFIER='btrfs-balance'
 . $(dirname $(realpath "$0"))/btrfsmaintenance-functions
 
 {
-evaluate_auto_mountpoint BTRFS_BALANCE_MOUNTPOINTS
+BTRFS_BALANCE_MOUNTPOINTS=$(expand_auto_mountpoint "$BTRFS_BALANCE_MOUNTPOINTS")
 OIFS="$IFS"
 IFS=:
 exec 2>&1 # redirect stderr to stdout to catch all output to log destination
--- a/btrfs-scrub.sh	
+++ a/btrfs-scrub.sh	
@@ -29,7 +29,7 @@ if [ "$BTRFS_SCRUB_PRIORITY" = "normal" ]; then
 fi
 
 {
-evaluate_auto_mountpoint BTRFS_SCRUB_MOUNTPOINTS
+BTRFS_SCRUB_MOUNTPOINTS=$(expand_auto_mountpoint "$BTRFS_SCRUB_MOUNTPOINTS")
 OIFS="$IFS"
 IFS=:
 exec 2>&1 # redirect stderr to stdout to catch all output to log destination
--- a/btrfs-trim.sh	
+++ a/btrfs-trim.sh	
@@ -18,7 +18,7 @@ LOGIDENTIFIER='btrfs-trim'
 . $(dirname $(realpath "$0"))/btrfsmaintenance-functions
 
 {
-evaluate_auto_mountpoint BTRFS_TRIM_MOUNTPOINTS
+BTRFS_TRIM_MOUNTPOINTS=$(expand_auto_mountpoint "$BTRFS_TRIM_MOUNTPOINTS")
 OIFS="$IFS"
 IFS=:
 exec 2>&1 # redirect stderr to stdout to catch all output to log destination
--- a/btrfsmaintenance-functions	
+++ a/btrfsmaintenance-functions	
@@ -3,23 +3,24 @@ 
 # this file contains common code for the btrfs maintenance scripts
 #
 
-# function: evaluate_auto_mountpoint
-# parameter: A variable name
+# function: expand_auto_mountpoint
+# parameter: path list from config variable or 'auto'
 #
-# this function checks whether the variable contains the special keyword "auto"
-# if yes, all currently mounted btrfs filesystems are evaluated and their mountpoints
-# are put into the parameter variable
-evaluate_auto_mountpoint() {
-	MOUNTPOINTSVAR=\$"$1"
-	if [ "$(eval expr \"$MOUNTPOINTSVAR\")" = "auto" ]; then
+# if the parameter is 'auto', this function prints path list of all btrfs
+# mountpoints, otherwise prints the parameter unchanged
+expand_auto_mountpoint() {
+	local MNTLIST="$1"
+
+	if [ "$MNTLIST" = "auto" ]; then
 		local BTRFS_DEVICES=""
 		local DEVICE=""
 		local MNT=""
-		local MNTLIST=""
+
 		# find all mounted btrfs filesystems, print their device nodes, sort them
 		# and remove identical entries
 		BTRFS_DEVICES=$(findmnt --types btrfs --output "SOURCE" --nofsroot --noheading | sort | uniq)
 		# find one (and only one) corresponding mountpoint for each btrfs device node
+		MNTLIST=""
 		for DEVICE in $BTRFS_DEVICES; do
 			MNT=$(findmnt --types btrfs --first-only --noheadings --output "TARGET" --source "$DEVICE")
 			if [ -n "$MNTLIST" ]; then
@@ -28,9 +29,8 @@ evaluate_auto_mountpoint() {
 				MNTLIST="$MNT"
 			fi
 		done
-		echo "evaluate mounted filesystems: $MNTLIST"
-		eval "$1=$MNTLIST"
 	fi
+	echo -n "$MNTLIST"
 }
 
 # function: detect_mixed_bg
-- 

--mqxezyyxfzbpffu6--
