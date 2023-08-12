//
//  POSCopy.swift
//  MyProject
//
//  Designed in DetailsPro
//  Copyright © (My Organization). All rights reserved.
//

import SwiftUI

struct POSCopy: View {
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Text("注文入力")
                    .fixedSize(horizontal: false, vertical: false)
                    .font(.headline)
                    .foregroundColor(.primary)
                HStack {
                    HStack {
                        Image(systemName: "chevron.left")
                            .symbolRenderingMode(.monochrome)
                            .padding(.leading)
                            .foregroundColor(.blue)
                        Text("ホーム")
                            .foregroundColor(.blue)
                    }
                    Spacer()
                    Spacer()
                    ZStack {
                        Text("料金表示：通信確立　サーバー：通信可能")
                            .padding(5)
                            .padding(.horizontal, 10)
                            .background {
                                RoundedRectangle(cornerRadius: 8, style: .continuous)
                                    .stroke(.blue, lineWidth: 1)
                                    .background(RoundedRectangle(cornerRadius: 8, style: .continuous).fill(Color(.systemBackground)))
                            }
                            .foregroundColor(.blue)
                    }
                    .padding(.trailing)
                }
                .frame(maxWidth: .infinity, maxHeight: 40, alignment: .center)
                .clipped()
            }
            .background(Color(.systemBackground))
            Divider()
            HStack(alignment: .top, spacing: 0) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 0) {
                        ForEach(0..<5) { _ in // Replace with your data model here
                            HStack(spacing: 0) {
                                Text("部門名")
                                    .font(.system(.title2, weight: .semibold))
                                    .padding(.leading, 30)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .symbolRenderingMode(.monochrome)
                                    .padding(.trailing, 20)
                            }
                            .frame(width: 160, height: 70)
                            .clipped()
                            .background {
                                VStack {
                                    Divider()
                                    Spacer()
                                    Divider()
                                }
                            }
                            .background(Color(.tertiarySystemBackground))
                            .foregroundColor(.secondary)
                        }
                    }
                }
                Divider()
                ScrollView {
                    VStack(alignment: .leading, spacing: 0) {
                        ForEach(0..<5) { _ in // Replace with your data model here
                            HStack(spacing: 0) {
                                Text("部門")
                                    .font(.system(.title, weight: .semibold))
                                    .foregroundColor(.primary)
                                Spacer()
                            }
                            .padding(.vertical)
                            LazyVGrid(columns: [GridItem(.flexible(), alignment: .top), GridItem(.flexible(), alignment: .top), GridItem(.flexible(), alignment: .top), GridItem(.flexible(), alignment: .top)]) {
                                ForEach(0..<5) { _ in // Replace with your data model here
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text("品名")
                                            .font(.system(.title2, weight: .bold))
                                            .padding(.vertical, 5)
                                            .lineLimit(2)
                                            .multilineTextAlignment(.leading)
                                        Spacer()
                                        HStack(spacing: 0) {
                                            Spacer()
                                            Text("¥500")
                                                .font(.system(.title2, weight: .regular))
                                        }
                                    }
                                    .padding(10)
                                    .frame(height: 120)
                                    .clipped()
                                    .background {
                                        RoundedRectangle(cornerRadius: 8, style: .continuous)
                                            .stroke(Color(.tertiaryLabel), lineWidth: 1)
                                            .background(RoundedRectangle(cornerRadius: 8, style: .continuous).fill(Color(.systemBrown)))
                                    }
                                    .foregroundColor(.white)
                                }
                            }
                        }
                    }
                    .padding(.horizontal, 10)
                    .frame(width: 600)
                    .clipped()
                }
                Divider()
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible())]) {
                        ForEach(0..<2) { _ in // Replace with your data model here
                            VStack(spacing: 0) {
                                Text("割引")
                                    .font(.system(.title2, weight: .bold))
                                    .padding(.vertical, 5)
                                    .frame(maxWidth: .infinity, maxHeight: 65, alignment: .center)
                                    .clipped()
                                    .lineLimit(2)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.primary)
                                Text("-¥500")
                                    .font(.system(.title2, weight: .regular))
                                    .padding(.bottom, 10)
                                    .foregroundColor(.primary)
                            }
                            .padding(.horizontal, 15)
                            .background {
                                RoundedRectangle(cornerRadius: 8, style: .continuous)
                                    .stroke(Color(.tertiaryLabel), lineWidth: 1)
                                    .background(RoundedRectangle(cornerRadius: 8, style: .continuous).fill(.secondary))
                            }
                            .frame(width: 100, height: 100)
                            .clipped()
                            .foregroundColor(Color(.systemBackground))
                        }
                    }
                    .padding(.horizontal, 10)
                    .padding(.top, 20)
                    .frame(width: 120)
                    .clipped()
                }
                Divider()
                VStack(spacing: 0) {
                    Text("注文リスト")
                        .font(.system(.title, weight: .semibold))
                        .padding(.vertical, 10)
                    Divider()
                    ScrollView {
                        VStack(spacing: 0) {
                            ForEach(0..<5) { _ in // Replace with your data model here
                                VStack(spacing: 0) {
                                    HStack {
                                        Text("品目")
                                            .lineLimit(0)
                                        Spacer()
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                                .fill(.red)
                                                .frame(width: 40, height: 40)
                                                .clipped()
                                            Image(systemName: "trash")
                                                .symbolRenderingMode(.monochrome)
                                                .foregroundColor(Color(.systemGray6))
                                        }
                                    }
                                    .padding(.bottom, 20)
                                    HStack(spacing: 0) {
                                        HStack {
                                            
                                        }
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 8, style: .continuous)
                                                .fill(Color(.tertiaryLabel))
                                                .frame(width: 40, height: 40)
                                                .clipped()
                                            Image(systemName: "minus")
                                                .imageScale(.large)
                                                .symbolRenderingMode(.monochrome)
                                                .foregroundColor(.white)
                                        }
                                        Text("1")
                                            .foregroundColor(.primary)
                                            .padding(.horizontal, 10)
                                            .lineLimit(0)
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 8, style: .continuous)
                                                .fill(Color(.tertiaryLabel))
                                                .frame(width: 40, height: 40)
                                                .clipped()
                                            Image(systemName: "plus")
                                                .imageScale(.large)
                                                .symbolRenderingMode(.monochrome)
                                                .foregroundColor(.white)
                                        }
                                        Spacer()
                                        Text("¥500")
                                            .lineLimit(0)
                                    }
                                }
                                .padding(20)
                                .background {
                                    VStack {
                                        Divider()
                                        Spacer()
                                        Divider()
                                    }
                                }
                                .background(Color(.systemBackground))
                                .font(.system(.title2, weight: .semibold))
                            }
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                        .clipped()
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .clipped()
            HStack(spacing: 0) {
                Text("999点")
                    .font(.title)
                    .foregroundColor(Color(.systemGray6))
                Text("¥5,000")
                    .font(.title)
                    .foregroundColor(Color(.systemGray6))
                    .padding(.leading)
                Spacer()
                HStack(spacing: 0) {
                    ForEach(0..<2) { _ in // Replace with your data model here
                        Text("項目")
                            .frame(maxWidth: .infinity)
                            .clipped()
                            .padding(.vertical)
                            .font(.system(.title2, weight: .semibold))
                            .background {
                                RoundedRectangle(cornerRadius: 8, style: .continuous)
                                    .fill(Color(.secondarySystemGroupedBackground))
                            }
                            .lineLimit(0)
                            .foregroundColor(.primary)
                    }
                    .frame(width: 150)
                    .clipped()
                    .padding(.horizontal, 10)
                }
                Text("支払いへ進む")
                    .frame(width: 200)
                    .clipped()
                    .padding(.vertical)
                    .font(.system(.title2, weight: .bold))
                    .background {
                        RoundedRectangle(cornerRadius: 8, style: .continuous)
                            .fill(.blue)
                    }
                    .lineLimit(0)
                    .foregroundColor(.white)
                    .padding(.leading, 70)
            }
            .padding(.horizontal, 40)
            .padding(.vertical, 15)
            .background {
                VStack {
                    Divider()
                    Spacer()
                }
            }
            .background(.primary)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .clipped()
        .background(Color(.secondarySystemBackground))
    }
}

struct POSCopy_Previews: PreviewProvider {
    static var previews: some View {
        POSCopy()
    }
}

