.class public Lcom/felhr/deviceids/CP210xIds;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final cp210xDevices:[J


# direct methods
.method static constructor <clinit>()V
    .locals 275

    const/16 v0, 0x45b

    const/16 v1, 0x53

    .line 1
    invoke-static {v0, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v2

    const/16 v0, 0x471

    const/16 v4, 0x66a

    .line 2
    invoke-static {v0, v4}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v4

    const v0, 0xe000

    const/16 v6, 0x489

    .line 3
    invoke-static {v6, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v7

    const v0, 0xe003

    .line 4
    invoke-static {v6, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v9

    const/16 v0, 0x745

    const/16 v6, 0x1000

    .line 5
    invoke-static {v0, v6}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v11

    const/16 v0, 0x846

    const/16 v6, 0x1100

    .line 6
    invoke-static {v0, v6}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v13

    const/16 v0, 0x8e6

    const/16 v15, 0x5501

    .line 7
    invoke-static {v0, v15}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v15

    const/16 v0, 0x8fd

    const/16 v1, 0xa

    .line 8
    invoke-static {v0, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v17

    const/16 v0, 0xbed

    .line 9
    invoke-static {v0, v6}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v19

    const/16 v6, 0x1101

    .line 10
    invoke-static {v0, v6}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v21

    const/16 v0, 0x1003

    const/16 v1, 0xfcf

    .line 11
    invoke-static {v1, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v23

    const/16 v0, 0x1004

    .line 12
    invoke-static {v1, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v25

    const/16 v0, 0x1006

    .line 13
    invoke-static {v1, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v0

    const/16 v6, 0xfde

    move-wide/from16 v27, v0

    const v0, 0xca05

    .line 14
    invoke-static {v6, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v0

    const/16 v6, 0x10a6

    move-wide/from16 v29, v0

    const v0, 0xaa26

    .line 15
    invoke-static {v6, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v0

    const/16 v6, 0x10ab

    move-wide/from16 v31, v0

    const/16 v0, 0x10c5

    .line 16
    invoke-static {v6, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v33

    const/16 v1, 0x10b5

    const v6, 0xac70

    .line 17
    invoke-static {v1, v6}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v35

    const/16 v1, 0xf91

    const/16 v6, 0x10c4

    .line 18
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v37

    const/16 v1, 0x1101

    .line 19
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v39

    const/16 v1, 0x1601

    .line 20
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v41

    const v1, 0x800a

    .line 21
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v43

    const v1, 0x803b    # 4.6E-41f

    .line 22
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v45

    const v1, 0x8044

    .line 23
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v47

    const v1, 0x804e

    .line 24
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v49

    const v1, 0x8053

    .line 25
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v51

    const v1, 0x8054

    .line 26
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v53

    const v1, 0x8066

    .line 27
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v55

    const v1, 0x806f

    .line 28
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v57

    const v1, 0x807a

    .line 29
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v59

    const v1, 0x80c4

    .line 30
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v61

    const v1, 0x80ca

    .line 31
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v63

    const v1, 0x80dd

    .line 32
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v65

    const v1, 0x80f6

    .line 33
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v67

    const v1, 0x8115

    .line 34
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v69

    const v1, 0x813d

    .line 35
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v71

    const v1, 0x813f

    .line 36
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v73

    const v1, 0x814a

    .line 37
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v75

    const v1, 0x814b

    .line 38
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v77

    const/16 v1, 0x2405

    const/4 v0, 0x3

    .line 39
    invoke-static {v1, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v79

    const v1, 0x8156

    .line 40
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v81

    const v1, 0x815e

    .line 41
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v83

    const v1, 0x815f

    .line 42
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v85

    const v1, 0x818b

    .line 43
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v87

    const v1, 0x819f

    .line 44
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v89

    const v1, 0x81a6

    .line 45
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v91

    const v1, 0x81a9

    .line 46
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v93

    const v1, 0x81ac

    .line 47
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v95

    const v1, 0x81ad

    .line 48
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v97

    const v1, 0x81c8

    .line 49
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v99

    const v1, 0x81e2

    .line 50
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v101

    const v1, 0x81e7

    .line 51
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v103

    const v1, 0x81e8

    .line 52
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v105

    const v1, 0x81f2

    .line 53
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v107

    const v1, 0x8218

    .line 54
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v109

    const v1, 0x822b

    .line 55
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v111

    const v1, 0x826b

    .line 56
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v113

    const v1, 0x8281

    .line 57
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v115

    const v1, 0x8293

    .line 58
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v117

    const v1, 0x82f9

    .line 59
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v119

    const v1, 0x8341

    .line 60
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v121

    const v1, 0x8382

    .line 61
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v123

    const v1, 0x83a8

    .line 62
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v125

    const v1, 0x83d8

    .line 63
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v127

    const v1, 0x8411

    .line 64
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v129

    const v1, 0x8418

    .line 65
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v131

    const v1, 0x846e

    .line 66
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v133

    const v1, 0x8477

    .line 67
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v135

    const v1, 0x85ea

    .line 68
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v137

    const v1, 0x85eb

    .line 69
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v139

    const v1, 0x85f8

    .line 70
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v141

    const v1, 0x8664

    .line 71
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v143

    const v1, 0x8665

    .line 72
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v145

    const v1, 0x875c

    .line 73
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v147

    const v1, 0x88a4

    .line 74
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v149

    const v1, 0x88a5

    .line 75
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v151

    const v1, 0xea60

    .line 76
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v153

    const v1, 0xea61

    .line 77
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v155

    const v0, 0xea63

    .line 78
    invoke-static {v6, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v157

    const v0, 0xea70

    .line 79
    invoke-static {v6, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v159

    const v0, 0xea71

    .line 80
    invoke-static {v6, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v161

    const v0, 0xea7a

    .line 81
    invoke-static {v6, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v163

    const v0, 0xea7b

    .line 82
    invoke-static {v6, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v165

    const v0, 0xea80

    .line 83
    invoke-static {v6, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v167

    const v0, 0xf001

    .line 84
    invoke-static {v6, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v169

    const v0, 0xf002

    .line 85
    invoke-static {v6, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v171

    const v0, 0xf003

    .line 86
    invoke-static {v6, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v173

    const v0, 0xf004

    .line 87
    invoke-static {v6, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v175

    const/16 v0, 0x10c5

    .line 88
    invoke-static {v0, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v0

    const/16 v6, 0x10ce

    move-wide/from16 v177, v0

    const v0, 0xea6a

    .line 89
    invoke-static {v6, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v0

    const/16 v6, 0x13ad

    move-wide/from16 v179, v0

    const v0, 0x9999

    .line 90
    invoke-static {v6, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v0

    const/16 v6, 0x1555

    move-wide/from16 v181, v0

    const/4 v0, 0x4

    .line 91
    invoke-static {v6, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v183

    const/16 v1, 0x166a

    const/16 v6, 0x201

    .line 92
    invoke-static {v1, v6}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v185

    const/16 v0, 0x301

    .line 93
    invoke-static {v1, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v187

    const/16 v0, 0x303

    .line 94
    invoke-static {v1, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v189

    const/16 v0, 0x304

    .line 95
    invoke-static {v1, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v191

    const/16 v0, 0x305

    .line 96
    invoke-static {v1, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v193

    const/16 v0, 0x401

    .line 97
    invoke-static {v1, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v195

    const/16 v0, 0x101

    .line 98
    invoke-static {v1, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v0

    const/16 v6, 0x16d6

    move-wide/from16 v199, v0

    const/4 v0, 0x1

    .line 99
    invoke-static {v6, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v201

    const/16 v1, 0x10

    const/16 v6, 0x16dc

    .line 100
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v203

    const/16 v1, 0x11

    .line 101
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v206

    const/16 v1, 0x12

    .line 102
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v209

    const/16 v1, 0x15

    .line 103
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v212

    const/16 v6, 0x17a8

    .line 104
    invoke-static {v6, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v214

    const/4 v1, 0x5

    .line 105
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v217

    const/16 v6, 0x17f4

    const v1, 0xaaaa

    .line 106
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v220

    const/16 v1, 0x1843

    const/16 v6, 0x200

    .line 107
    invoke-static {v1, v6}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v222

    const/16 v1, 0x18ef

    const v6, 0xe00f

    .line 108
    invoke-static {v1, v6}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v225

    const/16 v1, 0x1adb

    .line 109
    invoke-static {v1, v0}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v227

    const/16 v1, 0x1be3    # 1.0004E-41f

    const/16 v6, 0x7a6

    .line 110
    invoke-static {v1, v6}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v229

    const/16 v1, 0x102

    const/16 v6, 0x1e29

    .line 111
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v231

    const/16 v1, 0x501

    .line 112
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v233

    const/16 v1, 0x100

    const/16 v6, 0x1fb9

    .line 113
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v235

    const/16 v1, 0x200

    .line 114
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v237

    const/16 v1, 0x201

    .line 115
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v239

    const/16 v1, 0x202

    .line 116
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v241

    const/16 v1, 0x203

    .line 117
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v243

    const/16 v1, 0x300

    .line 118
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v245

    const/16 v1, 0x301

    .line 119
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v247

    const/16 v1, 0x302

    .line 120
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v197

    move-wide/from16 v249, v220

    const/16 v1, 0x303

    .line 121
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v219

    const/16 v1, 0x400

    move-wide/from16 v251, v217

    .line 122
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v216

    move-wide/from16 v253, v222

    const/16 v1, 0x401

    .line 123
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v221

    const/16 v1, 0x402

    .line 124
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v223

    const/16 v1, 0x403

    move-wide/from16 v255, v212

    .line 125
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v211

    const/16 v1, 0x404

    move-wide/16 v257, v219

    .line 126
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v218

    const/16 v1, 0x600

    move-wide/16 v259, v214

    .line 127
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v213

    const/16 v1, 0x601

    move-wide/16 v261, v216

    .line 128
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v215

    const/16 v1, 0x602

    move-wide/16 v263, v218

    .line 129
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v217

    const/16 v1, 0x700

    .line 130
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v219

    const/16 v1, 0x701

    move-wide/16 v265, v209

    .line 131
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v208

    const v1, 0xf190

    const/16 v6, 0x3195

    move-wide/16 v267, v206

    .line 132
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v205

    const v1, 0xf280

    move-wide/16 v269, v211

    .line 133
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v210

    const v1, 0xf281

    move-wide/16 v271, v208

    .line 134
    invoke-static {v6, v1}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v207

    const/16 v1, 0x413c

    const v6, 0x9500

    move-wide/16 v273, v210

    .line 135
    invoke-static {v1, v6}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v209

    const/16 v1, 0x1908

    const/16 v6, 0x2311

    .line 136
    invoke-static {v1, v6}, Lcom/felhr/deviceids/Helpers;->createDevice(II)J

    move-result-wide v211

    const/16 v1, 0x88

    new-array v1, v1, [J

    const/4 v6, 0x0

    aput-wide v2, v1, v6

    aput-wide v4, v1, v0

    const/4 v0, 0x2

    aput-wide v7, v1, v0

    const/4 v0, 0x3

    aput-wide v9, v1, v0

    const/4 v0, 0x4

    aput-wide v11, v1, v0

    const/4 v0, 0x5

    aput-wide v13, v1, v0

    const/4 v0, 0x6

    aput-wide v15, v1, v0

    const/4 v0, 0x7

    aput-wide v17, v1, v0

    const/16 v0, 0x8

    aput-wide v19, v1, v0

    const/16 v0, 0x9

    aput-wide v21, v1, v0

    const/16 v0, 0xa

    aput-wide v23, v1, v0

    const/16 v0, 0xb

    aput-wide v25, v1, v0

    const/16 v0, 0xc

    aput-wide v27, v1, v0

    const/16 v0, 0xd

    aput-wide v29, v1, v0

    const/16 v0, 0xe

    aput-wide v31, v1, v0

    const/16 v0, 0xf

    aput-wide v33, v1, v0

    const/16 v0, 0x10

    aput-wide v35, v1, v0

    const/16 v0, 0x11

    aput-wide v37, v1, v0

    const/16 v0, 0x12

    aput-wide v39, v1, v0

    const/16 v0, 0x13

    aput-wide v41, v1, v0

    const/16 v0, 0x14

    aput-wide v43, v1, v0

    const/16 v0, 0x15

    aput-wide v45, v1, v0

    const/16 v0, 0x16

    aput-wide v47, v1, v0

    const/16 v0, 0x17

    aput-wide v49, v1, v0

    const/16 v0, 0x18

    aput-wide v51, v1, v0

    const/16 v0, 0x19

    aput-wide v53, v1, v0

    const/16 v0, 0x1a

    aput-wide v55, v1, v0

    const/16 v0, 0x1b

    aput-wide v57, v1, v0

    const/16 v0, 0x1c

    aput-wide v59, v1, v0

    const/16 v0, 0x1d

    aput-wide v61, v1, v0

    const/16 v0, 0x1e

    aput-wide v63, v1, v0

    const/16 v0, 0x1f

    aput-wide v65, v1, v0

    const/16 v0, 0x20

    aput-wide v67, v1, v0

    const/16 v0, 0x21

    aput-wide v69, v1, v0

    const/16 v0, 0x22

    aput-wide v71, v1, v0

    const/16 v0, 0x23

    aput-wide v73, v1, v0

    const/16 v0, 0x24

    aput-wide v75, v1, v0

    const/16 v0, 0x25

    aput-wide v77, v1, v0

    const/16 v0, 0x26

    aput-wide v79, v1, v0

    const/16 v0, 0x27

    aput-wide v81, v1, v0

    const/16 v0, 0x28

    aput-wide v83, v1, v0

    const/16 v0, 0x29

    aput-wide v85, v1, v0

    const/16 v0, 0x2a

    aput-wide v87, v1, v0

    const/16 v0, 0x2b

    aput-wide v89, v1, v0

    const/16 v0, 0x2c

    aput-wide v91, v1, v0

    const/16 v0, 0x2d

    aput-wide v93, v1, v0

    const/16 v0, 0x2e

    aput-wide v95, v1, v0

    const/16 v0, 0x2f

    aput-wide v97, v1, v0

    const/16 v0, 0x30

    aput-wide v99, v1, v0

    const/16 v0, 0x31

    aput-wide v101, v1, v0

    const/16 v0, 0x32

    aput-wide v103, v1, v0

    const/16 v0, 0x33

    aput-wide v105, v1, v0

    const/16 v0, 0x34

    aput-wide v107, v1, v0

    const/16 v0, 0x35

    aput-wide v109, v1, v0

    const/16 v0, 0x36

    aput-wide v111, v1, v0

    const/16 v0, 0x37

    aput-wide v113, v1, v0

    const/16 v0, 0x38

    aput-wide v115, v1, v0

    const/16 v0, 0x39

    aput-wide v117, v1, v0

    const/16 v0, 0x3a

    aput-wide v119, v1, v0

    const/16 v0, 0x3b

    aput-wide v121, v1, v0

    const/16 v0, 0x3c

    aput-wide v123, v1, v0

    const/16 v0, 0x3d

    aput-wide v125, v1, v0

    const/16 v0, 0x3e

    aput-wide v127, v1, v0

    const/16 v0, 0x3f

    aput-wide v129, v1, v0

    const/16 v0, 0x40

    aput-wide v131, v1, v0

    const/16 v0, 0x41

    aput-wide v133, v1, v0

    const/16 v0, 0x42

    aput-wide v135, v1, v0

    const/16 v0, 0x43

    aput-wide v137, v1, v0

    const/16 v0, 0x44

    aput-wide v139, v1, v0

    const/16 v0, 0x45

    aput-wide v141, v1, v0

    const/16 v0, 0x46

    aput-wide v143, v1, v0

    const/16 v0, 0x47

    aput-wide v145, v1, v0

    const/16 v0, 0x48

    aput-wide v147, v1, v0

    const/16 v0, 0x49

    aput-wide v149, v1, v0

    const/16 v0, 0x4a

    aput-wide v151, v1, v0

    const/16 v0, 0x4b

    aput-wide v153, v1, v0

    const/16 v0, 0x4c

    aput-wide v155, v1, v0

    const/16 v0, 0x4d

    aput-wide v157, v1, v0

    const/16 v0, 0x4e

    aput-wide v159, v1, v0

    const/16 v0, 0x4f

    aput-wide v161, v1, v0

    const/16 v0, 0x50

    aput-wide v163, v1, v0

    const/16 v0, 0x51

    aput-wide v165, v1, v0

    const/16 v0, 0x52

    aput-wide v167, v1, v0

    const/16 v0, 0x53

    aput-wide v169, v1, v0

    const/16 v0, 0x54

    aput-wide v171, v1, v0

    const/16 v0, 0x55

    aput-wide v173, v1, v0

    const/16 v0, 0x56

    aput-wide v175, v1, v0

    const/16 v0, 0x57

    aput-wide v177, v1, v0

    const/16 v0, 0x58

    aput-wide v179, v1, v0

    const/16 v0, 0x59

    aput-wide v181, v1, v0

    const/16 v0, 0x5a

    aput-wide v183, v1, v0

    const/16 v0, 0x5b

    aput-wide v185, v1, v0

    const/16 v0, 0x5c

    aput-wide v187, v1, v0

    const/16 v0, 0x5d

    aput-wide v189, v1, v0

    const/16 v0, 0x5e

    aput-wide v191, v1, v0

    const/16 v0, 0x5f

    aput-wide v193, v1, v0

    const/16 v0, 0x60

    aput-wide v195, v1, v0

    const/16 v0, 0x61

    aput-wide v199, v1, v0

    const/16 v0, 0x62

    aput-wide v201, v1, v0

    const/16 v0, 0x63

    aput-wide v203, v1, v0

    const/16 v0, 0x64

    move-wide/from16 v2, v267

    aput-wide v2, v1, v0

    const/16 v0, 0x65

    move-wide/from16 v2, v265

    aput-wide v2, v1, v0

    const/16 v0, 0x66

    move-wide/from16 v2, v255

    aput-wide v2, v1, v0

    const/16 v0, 0x67

    move-wide/from16 v2, v259

    aput-wide v2, v1, v0

    const/16 v0, 0x68

    move-wide/from16 v2, v251

    aput-wide v2, v1, v0

    const/16 v0, 0x69

    move-wide/from16 v2, v249

    aput-wide v2, v1, v0

    const/16 v0, 0x6a

    move-wide/from16 v2, v253

    aput-wide v2, v1, v0

    const/16 v0, 0x6b

    aput-wide v225, v1, v0

    const/16 v0, 0x6c

    aput-wide v227, v1, v0

    const/16 v0, 0x6d

    aput-wide v229, v1, v0

    const/16 v0, 0x6e

    aput-wide v231, v1, v0

    const/16 v0, 0x6f

    aput-wide v233, v1, v0

    const/16 v0, 0x70

    aput-wide v235, v1, v0

    const/16 v0, 0x71

    aput-wide v237, v1, v0

    const/16 v0, 0x72

    aput-wide v239, v1, v0

    const/16 v0, 0x73

    aput-wide v241, v1, v0

    const/16 v0, 0x74

    aput-wide v243, v1, v0

    const/16 v0, 0x75

    aput-wide v245, v1, v0

    const/16 v0, 0x76

    aput-wide v247, v1, v0

    const/16 v0, 0x77

    aput-wide v197, v1, v0

    const/16 v0, 0x78

    move-wide/from16 v2, v257

    aput-wide v2, v1, v0

    const/16 v0, 0x79

    move-wide/from16 v2, v261

    aput-wide v2, v1, v0

    const/16 v0, 0x7a

    aput-wide v221, v1, v0

    const/16 v0, 0x7b

    aput-wide v223, v1, v0

    const/16 v0, 0x7c

    move-wide/from16 v2, v269

    aput-wide v2, v1, v0

    const/16 v0, 0x7d

    move-wide/from16 v2, v263

    aput-wide v2, v1, v0

    const/16 v0, 0x7e

    aput-wide v213, v1, v0

    const/16 v0, 0x7f

    aput-wide v215, v1, v0

    const/16 v0, 0x80

    aput-wide v217, v1, v0

    const/16 v0, 0x81

    aput-wide v219, v1, v0

    const/16 v0, 0x82

    move-wide/from16 v2, v271

    aput-wide v2, v1, v0

    const/16 v0, 0x83

    aput-wide v205, v1, v0

    const/16 v0, 0x84

    move-wide/from16 v2, v273

    aput-wide v2, v1, v0

    const/16 v0, 0x85

    aput-wide v207, v1, v0

    const/16 v0, 0x86

    aput-wide v209, v1, v0

    const/16 v0, 0x87

    aput-wide v211, v1, v0

    .line 137
    invoke-static {v1}, Lcom/felhr/deviceids/Helpers;->createTable([J)[J

    move-result-object v0

    sput-object v0, Lcom/felhr/deviceids/CP210xIds;->cp210xDevices:[J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static isDeviceSupported(II)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/felhr/deviceids/CP210xIds;->cp210xDevices:[J

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/felhr/deviceids/Helpers;->exists([JII)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
