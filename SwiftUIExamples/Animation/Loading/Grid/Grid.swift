//
//  SwiftUIView.swift
//  SwiftUIExamples
//
//  Created by Chris J W Walker on 14/01/2024.
//

import SwiftUI

struct SnakeSegment: Identifiable {
    var id: Int
    var position: CGPoint
}

struct SnakeView: View {
    let segmentSize: CGFloat = 20
    let animationSpeed: Double = 0.1
    let directionChangeInterval: TimeInterval = 0.5 // Change direction every 2 seconds

    @State private var snake: [SnakeSegment] = [
        SnakeSegment(id: 0, position: CGPoint(x: 100, y: 100))
    ]
    @State private var currentDirection: (x: CGFloat, y: CGFloat) = (1, 0)
    @State private var isChangingDirection = false

    var body: some View {
        ZStack {
            ForEach(snake) { segment in
                Circle()
                    .foregroundColor(.black)
                    .frame(width: segmentSize, height: segmentSize)
                    .position(segment.position)
            }
        }
        .onAppear {
            startAnimation()
        }
    }

    private func startAnimation() {
        Timer.scheduledTimer(withTimeInterval: animationSpeed, repeats: true) { _ in
            if !isChangingDirection {
                moveSnake()
            }
        }

        Timer.scheduledTimer(withTimeInterval: directionChangeInterval, repeats: true) { _ in
            changeDirectionRandomly()
        }
    }

    private func moveSnake() {
        var newSnake = snake

        // Move the head
        let head = snake.first!
        let newHead = SnakeSegment(id: head.id, position: CGPoint(x: head.position.x + currentDirection.x * segmentSize, y: head.position.y + currentDirection.y * segmentSize))
        newSnake[0] = newHead

        // Move the body segments
        for i in 1..<snake.count {
            newSnake[i] = snake[i-1]
        }

        // Check if the snake hits the bounds
        let maxX = UIScreen.main.bounds.width - segmentSize
        let maxY = UIScreen.main.bounds.height - segmentSize

        if newHead.position.x < 0 {
            newSnake[0].position.x = maxX
        } else if newHead.position.x > maxX {
            newSnake[0].position.x = 0
        }

        if newHead.position.y < 0 {
            newSnake[0].position.y = maxY
        } else if newHead.position.y > maxY {
            newSnake[0].position.y = 0
        }

        snake = newSnake
    }

    private func changeDirectionRandomly() {
        let newDirection = [(1, 0), (-1, 0), (0, 1), (0, -1)].randomElement() ?? (1, 0)
        currentDirection = (CGFloat(newDirection.0), CGFloat(newDirection.1))
    }
}

#Preview {
    SnakeView()
}
