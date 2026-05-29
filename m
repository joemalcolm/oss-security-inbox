Received: (qmail 24345 invoked by uid 550); 29 May 2026 10:01:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15681 invoked from network); 29 May 2026 09:53:20 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1780048390; cv=none;
        d=google.com; s=arc-20240605;
        b=LNy7NIHNdohXu539xXDF0QsCzcL8ZygAR+o3Hd7GzTproQfP0lXeuHHnNkBy2jMo6P
         0kEISZqoo2m0cVCujzgaKbb4B4JCzW+nDokBrFi48U9belflt+0+Vy0H0O3uA9YDXB66
         uASqoXQmdVuF7Hrbaf+kIANKGKXl1U8p7i0/1Krz+WgfiOg1dBxLVN30LhjyfFzvl+Gd
         eHgFhh5LNAeYemxnDDD5i+vIfRcSstwBfdKiC1qi5mNhsv7P8Z24WAfxsh77MnY/LHdH
         ToF4Fot4UmzvFbv7IQ8/68tnCZG17ec8Su2XPGNq51rv6YTwMSTkF0hTBlBLXF/rD8AX
         JO5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:dkim-signature;
        bh=TAWQOQ7s1ns9h/OdQssn/IK6XC4nhmUEuaNT6w8yiKQ=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=ktPOjpNYr+9L5UijUDy023qYpObg0Dge9QmvekCMMcBXwGPVmcn7FRwAdl8wh3XsPX
         QEXIaydaZCwqWpVWt6ontwb4kzSxnOTnGjzEqztQ9BkuzR2O9dGCu+WYq8+jLPGxt2P2
         dP9VQgwfXedvg8AdYavtr8++og9I79BD9egRq3S5aTBDbJyCuNJUc5w+VKWy2Gw8PrVE
         wbLifl085TflLATXjBcx9G9IIhliTxwoy+PyudsGjOqfATU/I9r7V1zcdOEBjo+PT0xY
         g1rMBP/gDbZqY+O4ibr4H5r6xzk2fDIi8WNeVlBCobvPC7/2rvQAf9ed3Vfm4muT+ubT
         bHwA==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780048390; x=1780653190; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TAWQOQ7s1ns9h/OdQssn/IK6XC4nhmUEuaNT6w8yiKQ=;
        b=dMyBPVScGl5T/Ehea9LbQamyiYlWbBg7ue2b5EcaMWizh+W982dTSO0I8RXSB4AP/e
         SkofWz9ZKHcFZ6TzyrYWcJYhyJvPMAOw3yMLdrXKTHgoQImPnd846nEG5tUmL/ZsY2Ug
         yqRzS7QitXpNSfO7qife5HZRpBeXlSJGW4lnh+m4kV1kUG+DuWnxFtqq3J/gD8G1sKiK
         DIeyDGywkdR+v61G5YnKwGVuD6nK/c2aBS40Bs2Us/k5l6VuVfOMYn6oeS+9/bD7Uraj
         ojbPWnvxTUKA9HV3nnD101tGkVI7F2Y9CloemkCgW+/aGlen2Jn2biowIB5f8PXxiVn+
         eZLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780048390; x=1780653190;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TAWQOQ7s1ns9h/OdQssn/IK6XC4nhmUEuaNT6w8yiKQ=;
        b=NVC8SlArxu4Q3l5PTPxB3NF+mihU/TXRC5oO6hep0RKlhgg/SHLt56itGQ/xjWjvRV
         0KP3EYLv1AlRQGhGw0UD5IE1TRsF90ThTLGiHT/V5qlyMODpf+5xiODeTl+5iz09NIzL
         +Zknu8ecckvczzGdbkQCzLzu/IuvRqKrvICBKN+EW89aUR02BR9cZEIioVXP2mXyziTa
         XNAGvQgvKLYCbrmxe57o/wNKTJwn2JgAmzUAt3KcCmdLreJhawpYClPOxysrKOXf7wWk
         ewuRTT6IV2mieEew+bGTzCC9ArPyFxXZTKTEWzaWBRftHWlNxyn9IjM9uWx50YrXfAWi
         Iz9w==
X-Gm-Message-State: AOJu0Ywmi78OaVC0jtzfnfpsBso4oAoVZ6YY1HS90uEd2/cFTa1QFA3p
	RU/xc0zcp/HU8h9t6zL/VVfl+hWowvCNAYy+KFA7/xxCcPGqdhusgPW2husOCqby8abXvhXesEJ
	v/lIqsAT6nL1PQEa4yheOr0BkflieVvnlKp5ev7ZSkA==
X-Gm-Gg: Acq92OEfVqff8qyn/XEtIWEJgVY0UXVAvlPhgk4xK6CH1kcDL27u+A/WU+VzU7IwpA9
	ttlr21CXX2XPxVO85AXxYPqCV98kJ72bb7Tpm9HyeyaUD66xvddQSUavttvt6mbb2neOiP/iarb
	4+dHTdiQOUUuu/j4wnzIFUAZEawYNvJIeA4yPKjNoSsLxJxxQofuUJ7f+fwezCjJU9/q4W8Pn67
	utDpOKCGviX8PJyIvk1WpkZLHggNCRhLPEBAyYQqSpwXyu34jAlXKTwjUi5uM3DiaB0BzFfkABy
	dQwzOtVj1lljD9QVGDawidBz7ACqkTLBw3wTvvV7jyg1NwJII3AMPaVEvugJR9GO18dCgYsdYPI
	7ciZ5RcMZuiZIFIYDxy/V9SNNx8H7IxS7Wg==
X-Received: by 2002:a17:907:7387:b0:bd4:e5bf:76b6 with SMTP id
 a640c23a62f3a-be9c9d14732mr76242966b.5.1780048389562; Fri, 29 May 2026
 02:53:09 -0700 (PDT)
MIME-Version: 1.0
From: Maxim Suhanov <dfirblog@gmail.com>
Date: Fri, 29 May 2026 12:52:58 +0300
X-Gm-Features: AVHnY4KZ5c0Rk7BMapN-9zMjtEpi7d3qIFrG34SeM__98AoTKH3WJQEiycWs9P4
Message-ID: <CAKeu6dWB+=QAwU-91gGSgp-C=0Tmeo=vOHu8EW4tnLfQ2aP3Cg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2024-13745, EDK II: several issues with partition table measurements

Hello.

These issues were privately reported to the EDK II maintainers on
2024-12-25 (via GHSA-85f5-mjx9-mg54). Affected versions were: <=3D
edk2-stable202411. I'm not aware of any fixes, so any later version is
expected to be vulnerable.

There was some technical discussion, which ended on 2025-01-22.

On 2025-12-30, I asked for updates, also asked if my report should be
marked as "WONTFIX", but got no reply to these questions.

So, here is the disclosure.

In short, one must not trust the PCR[5] measurements recording the
expected GUID Partition Table (GPT) layout. This is expected to affect
TPM-based FDE instances when the underlying GPT layout is somehow
security-relevant.

My original report (converted to plaintext, PoC removed):

The DxeTpm2MeasureBootLib library can measure a partition table
different from one parsed by the PartitionDxe driver

# Summary

I have found that a logic error and relaxed checks (and one possible
violation of the TCG specification) can result in the
Tcg2MeasureGptTable() function
(DxeTpm2MeasureBootLib/DxeTpm2MeasureBootLib.c) measuring (into the
PCR[5]) a partition table which is different from the one parsed by
the PartitionInstallGptChildHandles() function (PartitionDxe/Gpt.c)
from the same block device.

And these two partition table instances can be different from another
one used by the operating system.

In particular, the DxeTpm2MeasureBootLib library, the PartitionDxe
driver, and the operating system can parse the same data on the same
block device in three different ways, leading to three different,
attacker-controlled partition table instances being used in different
pieces of code (here, "instance" refers to the partition layout
observed by one of those implementations listed after parsing on-disk
data).

Since a partition table can include security-related metadata, these
issues are reported as a vulnerability.

For example, at least one fixed (no longer embargoed) vulnerability,
CVE-2024-43513, relies on an attacker being capable of setting the
"noautomount" bit in the GUID partition metadata.
So, it's critical to measure the same partition table instance as used
by other firmware components and operating system components. Or, at
least, detect possible edge cases and bail out early.

The vulnerability described here allows an attacker to change the
entire partition layout or metadata of a specific partition in a way
that is invisible to the measurements done using the PCR[5] and
recorded in the TPM log. (An "expected" partition layout is measured,
but a "malicious" partition layout is used, without executing anything
unexpected... This is a data-only attack.)

# Details behind vulnerability

The code responsible for parsing the GUID partition table starts here:
https://github.com/tianocore/edk2/blob/1cc78814cd8812c459115749409882b7243e=
5581/MdeModulePkg/Universal/Disk/PartitionDxe/Gpt.c#L233.

The code responsible for measuring the GUID partition table starts
here: https://github.com/tianocore/edk2/blob/1cc78814cd8812c459115749409882=
b7243e5581/SecurityPkg/Library/DxeTpm2MeasureBootLib/DxeTpm2MeasureBootLib.=
c#L188.

The GUID partition table layout is described here (for reference):
https://en.wikipedia.org/wiki/GUID_Partition_Table.

The TCG specification mentioned is here:
https://trustedcomputinggroup.org/wp-content/uploads/TCG-PC-Client-Platform=
-Firmware-Profile-Version-1.06-Revision-52_pub-2.pdf.

By design, the code for parsing the GUID partition table runs before
the code that measures it (because the boot device is unknown at that
stage, so it's unclear what block device to use).

The code that measures the partition table (in the
DxeTpm2MeasureBootLib library) does the following:
1.1. it reads data from LBA 1 (the GPT header);
1.2. it validates the GPT header using relaxed checks (e.g., it
doesn't validate the CRC32 checksums);
1.3. it reads data from LBAs containing the GPT partition entry array;
1.4. it builds a structure containing both the GPT header and the GPT
partition entry array, empty partition entries are ignored (see: Note
1);
1.5. it measures and logs that structure.

This code is pretty straightforward. It assumes that the right GPT
header is located in LBA 1, the code doesn't try to read it from a
backup location (LBA MAX =E2=80=94 this is the highest LBA available on the
underlying drive). And the checks are relaxed (I mean, they are very
relaxed compared to the PartitionDxe driver).

--- NOTE 1 ---

The corresponding condition (used to check if the partition array
member is empty) is:

  if (!IsZeroGuid (&PartitionEntry->PartitionTypeGUID))

This behavior violates the TCG PC Client Platform Firmware Profile
Specification, table 15 (page 101). The number of partition entries to
be measured "corresponds to the GPT Header NumberOfPartitonsEntires.
See the UEFI Specification GPT Header". This fields counts the number
of all partition slots in the array, not just allocated (used)
partition entries.

Such a violation allows an attacker to change one byte in an unused
(empty) partition entry, after the "PartitionTypeGUID" field (i.e., in
the data area not included in the measurement), leading to the
checksum validation failure.

In other words, an attacker can corrupt the partition entry array in a
way that isn't covered by the PCR[5] measurement.

--- END OF NOTE ---

The code that parses the partition table (in the PartitionDxe driver)
does the following:
2.1. it reads data from LBA 0 (the MBR);
2.2. it checks if the MBR contains a protective partition;
2.3. it reads data from LBA 1 (the GPT header);
2.4. it validates the GPT header using stricter checks (these include
the GPT partition entry array checks);
2.5. it reads data from LBA MAX (the backup GPT header);
2.6. it validates the backup GPT header using the same (strict) checks;
2.7. if one of those GPT headers is invalid, it tries to repair the
GPT header using its valid copy;
2.8. it reads data from LBAs containing the GPT partition entry array;
2.9. it validates the GPT partition entry array and then creates child
device handles for valid partition entries (there is no failure if any
partition entry is invalid for some reason, but this is okay).

As you can see, the code in the DxeTpm2MeasureBootLib library assumes
that the partition table was checked and repaired, if required, in the
PartitionDxe driver.

This is a wrong assumption, because the underlying drive could be
write-protected (e.g., it's a degraded RAID volume). In this case, an
attempt to write (by calling the DiskIo->WriteDisk() method in the
PartitionRestoreGptTable() function) the "repaired" GPT header data to
LBA 1 will result in an I/O error, so the invalid GPT header would
remain there (and, thus, read later by the DxeTpm2MeasureBootLib
library).

However, this is an edge case. So, let's continue...

At steps #2.3-#2.7, the following code gets executed:

  //
  // Check primary and backup partition tables
  //
  if (!PartitionValidGptTable (BlockIo, DiskIo,
PRIMARY_PART_HEADER_LBA, PrimaryHeader)) {
    DEBUG ((DEBUG_INFO, " Not Valid primary partition table\n"));

    if (!PartitionValidGptTable (BlockIo, DiskIo, LastBlock, BackupHeader))=
 {
      DEBUG ((DEBUG_INFO, " Not Valid backup partition table\n"));
      goto Done;
    } else {
      DEBUG ((DEBUG_INFO, " Valid backup partition table\n"));
      DEBUG ((DEBUG_INFO, " Restore primary partition table by the backup\n=
"));
      if (!PartitionRestoreGptTable (BlockIo, DiskIo, BackupHeader)) {
        DEBUG ((DEBUG_INFO, " Restore primary partition table error\n"));
      }

      if (PartitionValidGptTable (BlockIo, DiskIo,
BackupHeader->AlternateLBA, PrimaryHeader)) {
        DEBUG ((DEBUG_INFO, " Restore backup partition table success\n"));
      }
    }
  } else if (!PartitionValidGptTable (BlockIo, DiskIo,
PrimaryHeader->AlternateLBA, BackupHeader)) {
    DEBUG ((DEBUG_INFO, " Valid primary and !Valid backup partition table\n=
"));
    DEBUG ((DEBUG_INFO, " Restore backup partition table by the primary\n")=
);
    if (!PartitionRestoreGptTable (BlockIo, DiskIo, PrimaryHeader)) {
      DEBUG ((DEBUG_INFO, " Restore backup partition table error\n"));
    }

    if (PartitionValidGptTable (BlockIo, DiskIo,
PrimaryHeader->AlternateLBA, BackupHeader)) {
      DEBUG ((DEBUG_INFO, " Restore backup partition table success\n"));
    }
  }

  DEBUG ((DEBUG_INFO, " Valid primary and Valid backup partition table\n"));

  // My note: the "PrimaryHeader" variable is then used to read and
parse the GPT partition entry array.

If both GPT headers are valid, the code jumps to the last line quoted above.

If both GPT headers are invalid, the code bails out ("goto Done;").

If one GPT header is invalid but the other one is valid, the invalid
GPT header is repaired using the valid one (by calling the
PartitionRestoreGptTable() function). After this, the repaired GPT
header (and the corresponding) is read and validated again (by calling
the PartitionValidGptTable() function).

The logic error here is that that both functions,
PartitionRestoreGptTable() and PartitionValidGptTable(), can fail
(return false) and leave data referenced by the "PrimaryHeader"
variable intact (in the untrusted, known to be invalid state). The
code just jumps to the next block (marked with the "Valid primary and
Valid backup partition table" message), which uses the "PrimaryHeader"
variable.

Fortunately, this doesn't lead to out-of-bounds access in the current code.

So, the code must never assume successful writes in the
PartitionRestoreGptTable() function and successful reads in the
PartitionValidGptTable() function, it must bail out as soon as one
error condition is encountered.

Previously, I mentioned one case when the PartitionRestoreGptTable()
function returns false: when there is a write error because of
write-protected media.

There is another case resulting in write and subsequent read errors:
when an attempt is made to restore the GPT header beyond the end of
the corresponding block device. The PartitionRestoreGptTable()
function tries to restore the GPT header to the "alternate LBA" as
specified in the GPT header that passed the checks (the valid one).
And this "alternate LBA" can point to any location, beyond the end of
the block device too. See:
https://github.com/tianocore/edk2/blob/1cc78814cd8812c459115749409882b7243e=
5581/MdeModulePkg/Universal/Disk/PartitionDxe/Gpt.c#L637.

This is not an edge case, because all conditions here are
software-only and attacker-controlled.

# Vulnerability

The idea is to keep the GPT header (LBA 1) intact, keep the measured
part (everything but unused partition entries) of the GPT partition
entry array intact, then invalidate the GPT partition entry array by
modifying one byte within any unused partition entry (this will break
the CRC32 check at step #2.4, but the final PCR[5] value will remain
the same).

This will force the recovery logic (step #2.7).

During the recovery, the malformed GPT backup header is processed (and
it passes all of the checks at step #2.6). Its "alternate LBA" points
somewhere in the middle of the underlying drive.

After the recovery, the real GPT header (LBA 1) is intact (it wasn't
overwritten during the recovery process) and the "recovered" malformed
GPT header is used (its data is now referenced by the "PrimaryHeader"
variable).

In particular, the "PartitionRestoreGptTable (BlockIo, DiskIo,
BackupHeader)" call places the malformed GPT header into the middle of
the drive and the "PartitionValidGptTable (BlockIo, DiskIo,
BackupHeader->AlternateLBA, PrimaryHeader)" call reads that header
into the "PrimaryHeader" variable.

This allows the attacker to "replace" the GPT header used by the
PartitionDxe driver: it's taken from an unusual location (somewhere in
the middle of the drive).
The real GPT header, which is later used by the DxeTpm2MeasureBootLib
library, is left intact (at LBA 1).

In order to "replace" the GPT partition entry array, the following
actions should be performed:

(When recovering from the backup GPT header, the
PartitionRestoreGptTable() function writes this array to LBAs 2+
unconditionally, see:
https://github.com/tianocore/edk2/blob/1cc78814cd8812c459115749409882b7243e=
5581/MdeModulePkg/Universal/Disk/PartitionDxe/Gpt.c#L631.)

* if the original GPT partition entry array starts at LBA different
from 2 (this isn't the default layout), the attacker can simply force
the recovery of a small "new" array occupying one sector only (which
is going to be written to LBA 2);
* if the original GPT partition entry array starts at LBA 2 (this is
the default layout), the attacker can force the recovery of a larger
(containing more sectors) array starting with the same entries as the
original one (in this case, the attacker can covertly "append" entries
into the existing partition entry array =E2=80=94 the PartitionDxe driver w=
ill
use a larger array, containing "new" entries, the
DxeTpm2MeasureBootLib library will use a smaller array, without "new"
entries);
* alternatively, if the attacker doesn't care about the final PCR[5]
value but wants to bypass TPM-based attestation checks, the attacker
can rewrite the "PartitionEntryLBA" field (hopefully, attestation
checks don't care about its value) and move the GPT partition entry
array to a different location, while keeping its contents intact
(thus, allowing the recovery of a "new" array to LBAs 2+).

# PoC

[SECTION REMOVED]

# List of issues reported

For clarity, here is a list of all issues (including edge cases)
mentioned before:

1. One possible TCG specification violation covering unused (empty)
GPT partition entries. Such entries are ignored in the current code.
2. One failure to repair the invalid GPT header when the underlying
drive is write-protected (e.g., it's a degraded RAID volume).
3. One logic error leading to the usage of untrusted (known to be
invalid) values in the GPT header (because of a failed restore attempt
when the "alternate LBA" field of the valid GPT header points beyond
the end of the corresponding block device).
4. One vulnerability leading to the usage of a partition table other
than measured.

# Possible fixes

In general, the vulnerability reported is caused by two
implementations of the GPT parser, something like:

1. ProcessPartitions(ParseGPT_1(InputData)),
2. MeasurePartitions(ParseGPT_2(InputData)).

Here, "InputData" is the same in two cases, but "ParseGPT_1" and
"ParseGPT_2" are functions that parse that data in different ways,
returning different results in unusual cases.

One solution is to implement stricter checks in the
DxeTpm2MeasureBootLib library, stopping immediately if anything is
wrong.

Another solution is to share the code between the PartitionDxe driver
and the DxeTpm2MeasureBootLib library. Two implementations must be
equal.

# Attached files

[SECTION REMOVED]
