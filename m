X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1944" "Thursday" "26" "May" "2016" "14:22:31" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160526182231.A7D0A52E007@smtpvbsrv1.mitre.org>" "46" "[oss-security] Re: CVE Request Qemu: scsi: megasas: stack information leakage while reading configuration" nil nil nil "5" "2016052618:22:31" "[oss-security] Re: CVE Request Qemu: scsi: megasas: stack information leakage while reading configuration" (number mark "U       cve-assign@m May 26   46/1944  " thread-indent "\"[oss-security] Re: CVE Request Qemu: scsi: megasas: stack information leakage while reading configuration\"\n") "<alpine.LFD.2.20.1605251756250.15974@wniryva>" ("<alpine.LFD.2.20.1605251756250.15974@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20292 invoked by uid 550); 26 May 2016 18:22:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20264 invoked from network); 26 May 2016 18:22:43 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn
In-Reply-To: <alpine.LFD.2.20.1605251756250.15974@wniryva>
Message-Id: <20160526182231.A7D0A52E007@smtpvbsrv1.mitre.org>
Date: Thu, 26 May 2016 14:22:31 -0400 (EDT)
Subject: [oss-security] Re: CVE Request Qemu: scsi: megasas: stack information leakage while reading configuration

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the MegaRAID SAS 8708EM2 Host Bus Adapter
> emulation support is vulnerable to an information leakage issue. It could
> occur while processing MegaRAID Firmware Interface(MFI) command to read device
> configuration in 'megasas_dcmd_cfg_read'.
> 
> A privileged user inside guest could use this flaw to leak host memory bytes.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-05/msg04419.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1339583

>> When reading MegaRAID SAS controller configuration via MegaRAID
>> Firmware Interface(MFI) commands, routine megasas_dcmd_cfg_read
>> uses an uninitialised local data buffer. Initialise this buffer
>> to avoid stack information leakage.

Use CVE-2016-5105.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/scsi/megasas.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXRzxiAAoJEHb/MwWLVhi2qVUP/AsvBiRL5zXD4C4Kx/LCRyCE
PbG+dd7HH27fm5UHvev40MLvZ9tXQok3hV2XlMMBvvLzkIwFfxYA67qOmJJAF76d
ae200JbEbdIKYF8EMANPzbh4xKZ/bpRD8cD43kBWpvr0oGzHsJzP7K1147844kFx
R9nT3b18k18YhbxO/kEGi4ssDoFx3Orqrdi6mYQWU6UeZQtwkjTpGOg0pKFubtoW
htAhGT/8LPS4NxzVyCcAhLRb8Gk403IlmHnB3b/T7frUcx6hjSJqVm2mShAO5tT3
iLYPjDcbljFjhQ9KFuFcflDKRFoZU5eQjFyx0kJ99QqlnmvPmOB0ks9RYWfUROWq
7D7s3SW8jmqK8Q1LcANHw3hDYNabVQzrY+R31fAM/BmhmdWzlDIDXs/z/lXBzsdk
gQkDbOD4Zizfi9XwN+Su2wp8ZkG25tO5t5je0au+irHck53lPzJYI6UgKWw82O1S
lEsMZj8dvn+qcOvOYZrQr/awQ13nz+1VjbwiOn4Ce0cS35mRXAMYM2uRvj7NIVrR
qZrSavg/TN+tOAxKKDcrLyipwoSBtjeXyGp22MWYv+es2jdt9RJ9RFDl6mrlOy2i
eV0KPnXpEYqqGRrLaYLYUPAosfYyQiHW0aMIpMOKNNJ++Fw2SgeJGGu/W5fsdUW/
StE1XDD/7pcOjCT2bJw5
=kowa
-----END PGP SIGNATURE-----
