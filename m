Received: (qmail 14130 invoked by uid 550); 7 Apr 2022 14:13:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25913 invoked from network); 7 Apr 2022 13:43:07 -0000
Content-Type: text/plain; charset=utf-8
From: Gautham Banasandra <gaurava@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <98fc0ebe-7278-6283-1c73-85275a1a267f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 07 Apr 2022 13:42:53 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-26612: Apache Hadoop: Arbitrary file write in
 FileUtil#unpackEntries on Windows 

Severity: high

Description:

The unTar function [1] uses unTarUsingJava function on Windows and the buil=
t-in tar utility on Unix and other OSes:

if(Shell.WINDOWS) {
  // Tar is not native to Windows. Use simple Java based implementation for
  // tests and simple tar archives
  unTarUsingJava(inFile, untarDir, gzipped);
}
else {
  // spawn tar utility to untar archive for full fledged unix behavior such
  // as resolving symlinks in tar archives
  unTarUsingTar(inFile, untarDir, gzipped);
}

The function verifies that the extracted TAR entry is under the expected ta=
rgetDirPath[2]:

if (!outputFile.getCanonicalPath().startsWith(targetDirPath)) {
  throw new IOException("expanding " + entry.getName()
      + " would create entry outside of " + outputDir);
}

However it doesn't apply the same restriction to the target of an extracted=
 symlink[3]:

if (entry.isSymbolicLink()) {
  // Create symbolic link relative to tar parent dir
  Files.createSymbolicLink(FileSystems.getDefault()
          .getPath(outputDir.getPath(), entry.getName()),
      FileSystems.getDefault().getPath(entry.getLinkName()));
  return;
}

As a result, a TAR entry may create a symlink under the expected extraction=
 directory which points to an external directory. A subsequent TAR entry ma=
y extract an arbitrary file into the external directory using the symlink n=
ame. This however would be caught by the same targetDirPath[4] check on Uni=
x because of the getCanonicalPath call. However on Windows, getCanonicalPat=
h doesn't resolve symbolic links, which bypasses the check.

unpackEntries during TAR extraction follows symbolic links which allows wri=
ting outside expected base directory on Windows.

[1]=3Dhttps://github.com/apache/hadoop/blob/125e3b616040b4f98956aa946cc51e9=
9f7d596c2/hadoop-common-project/hadoop-common/src/main/java/org/apache/hado=
op/fs/FileUtil.java#L850
[2]=3Dhttps://github.com/apache/hadoop/blob/125e3b616040b4f98956aa946cc51e9=
9f7d596c2/hadoop-common-project/hadoop-common/src/main/java/org/apache/hado=
op/fs/FileUtil.java#L964-L967
[3]=3Dhttps://github.com/apache/hadoop/blob/125e3b616040b4f98956aa946cc51e9=
9f7d596c2/hadoop-common-project/hadoop-common/src/main/java/org/apache/hado=
op/fs/FileUtil.java#L983-L989
[4]=3Dhttps://github.com/apache/hadoop/blob/125e3b616040b4f98956aa946cc51e9=
9f7d596c2/hadoop-common-project/hadoop-common/src/main/java/org/apache/hado=
op/fs/FileUtil.java#L964-L967

Credit:

This issue was reported by a member of GitHub Security Lab, Jaroslav Loba=
=C4=8Devski (https://github.com/JarLob).

