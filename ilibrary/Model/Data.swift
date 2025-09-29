import SwiftUI

struct MediaItem : Identifiable {
    let id = UUID()
    let imageName : String
    let video : String
    let explanation : String
}

struct SectionItem : Identifiable {
    let id = UUID()
    let title : String
    let mediaItems : [MediaItem]
}

let sectionItems : [SectionItem] = [
    SectionItem(
        title: "CSEd/SS",
        mediaItems: [
            MediaItem(imageName: "'24-'25報告動画", video: "報告動画", explanation: "2025年2月に熊本城ホールで開催された「CSEdWeek 2024-25 in Kumamoto」の様子をまとめた動画です。初心者から上級者まで楽しめる5つの多彩なプログラミング体験コースが用意され、大学生スタッフのサポートのもと、小中学生たちが冬休みに最新技術に触れながら主体的に学ぶ姿が紹介されています。"),
            MediaItem(imageName: "SS 23-24", video: "SS 23-24", explanation: "2024年8月に熊本城ホールで開催されたSTEAM Kumamotoサマースクールの様子をまとめた動画です。親子で参加できるプログラミングやAI、IoT体験など多彩なコースが用意され、子どもたちが大学生スタッフと一緒に最新技術に触れながら楽しく学ぶ姿が紹介されています。"),
            MediaItem(imageName: "CSEd 23-24", video: "CSEd 23-24", explanation: "2024年2月に開催された「Computer Science Education Week 2023-24 in Kumamoto」の様子をまとめた動画です。初心者から経験者まで楽しめる多彩なプログラミング体験が用意され、大学生スタッフのサポートのもと、小学生たちが楽しく学びに取り組む様子が紹介されています。"),
        ]
    ),
    SectionItem(
        title: "リクルートムービー",
        mediaItems: [
            MediaItem(imageName: "intelleggs!完成動画", video: "intelleggs!完成動画video", explanation: "飯村研究室のサブゼミ「intelleggs!」による、熊本市ICT活用プロジェクトの記録映像です。主に先生方を対象としたICT教育活用研修に、学生が企画・運営・講師補助として参加しています。教育現場でのICT活用を支援する取り組みの様子や、先生方と協力しながら進める実践的な活動の一端を紹介しています。"),
            MediaItem(imageName: "Recruit2024", video: "Recruit2024video", explanation: "2024年度の飯村研究室を紹介する動画です。学生たちの活動や研究の雰囲気をリアルにお伝えしています。研究室の実際の様子を知りたい方は、ぜひご覧ください。"),
            MediaItem(imageName: "ムービー制作部完成", video: "ムービー制作部完成video", explanation: "ここではイベントや研究活動の魅力を映像で伝えることを目的に、撮影から編集までを学生自身の手で行っています。カメラワークや構成にこだわりながら、伝わる・残る映像づくりを目指しています。今回の動画でも、現場の雰囲気や参加者の表情が生き生きと伝わるよう工夫しています。"),
            MediaItem(imageName: "apps rm 完成版", video: "apps rm 完成版video", explanation: "アプリ開発やコーディングの知識を学生同士で共有し合いながら、実践的なスキルを身につけることを目指しています。企画・開発・発表までを協力して進める様子や、初心者から経験者までがともに学び合う活気ある雰囲気が伝わる内容になっています。")
        ]
    ),
    SectionItem(
        title: "学外活動",
        mediaItems: [
            MediaItem(imageName: "【熊本市ICT活用】児童と大学生が共に学ぶプログラミング教育推進の取組 〜熊本市立五福小学校 6学年理科での実践〜", video: "【熊本市ICT活用】児童と大学生が共に学ぶプログラミング教育推進の取組 〜熊本市立五福小学校 6学年理科での実践〜", explanation: "熊本市立五福小学校の6年生と大学生が、理科の授業を通じて協力しながらプログラミングに挑戦する様子を紹介した動画です。子どもたちの成長や学びの工夫が描かれています。"),
            MediaItem(imageName: "ピカピカ24時", video: "ピカピカ24時", explanation: "熊本県警のキャラクター「ゆっぴー」と仲間たちが、薄暮時の交通事故防止のポイントを楽しく学べる交通安全啓発映像です。"),
        ]
    ),
]
