/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstclear_bonus.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rlabbiz <rlabbiz@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/10 15:49:28 by rlabbiz           #+#    #+#             */
/*   Updated: 2022/10/22 16:44:42 by rlabbiz          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/libft.h"

void	ft_lstclear(t_list **lst, void (*del)(void *))
{
	t_list	*node;

	if (lst && del)
	{
		node = *lst;
		while (node != NULL)
		{
			del(node->content);
			*lst = node;
			node = node->next;
			free(*lst);
		}
		*lst = NULL;
	}
}
